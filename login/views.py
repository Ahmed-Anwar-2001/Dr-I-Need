from sqlite3 import Cursor
from django.shortcuts import render
from django.http import HttpResponse
from datetime import date

import mysql.connector as sql

from http import client
from gnewsclient import gnewsclient
import requests
from bs4 import BeautifulSoup
import random

from .var import nam, u_id,em, gen, phn, db1, ps, ct,doc,department,msgs,rating,a_id,hos,details,details2,d_ID,desg,fee,exp,cham,dict1,bmi


cit = ''
feess = ''

name = ''
email = ''
gender = ''
no = ''
dob = ''
pw = ''
id=''
city = ''
u_id = ''
nam = ''

# Create your views here.


def startpage(request):
    return render(request,'start.html')

def loginpage(request):
    global email,pw, nam, u_id,em, gen, phn, db1, ps, ct,bmi
    if request.method=="POST":
        m=sql.connect(host="localhost",user="root",password="",database='370project')
        cursor=m.cursor()
        d=request.POST
        
        for key,value in d.items():
            if key=="email":
                email=value
            if key=="password":
                pw=value
        
        c="select * from login_users where Email='{}' and Password='{}'".format(email,pw)
        cursor.execute(c)
        t=cursor.fetchall()
        

        if t==[]:
            return render(request,'error.html')
        else:
            nam = t[0][0]
            u_id = t[0][6]
            em = t[0][1]
            gen =  t[0][2]
            phn =  t[0][3]
            db1 =  t[0][4]
            ps =  t[0][5]
            ct = t[0][7]
            bmi = t[0][-1]
            return render(request,"index.html",{'g':nam})

    return render(request,'login.html')

def admin_signup(request):
    global nam, pw,a_id,hos,details,details2
    loc = "Not Specified Yet"
    loc2 = "Not Specified Yet"
    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        d = request.POST
        for key,value in d.items():
            if key=="Name":
                nam = value
            if key=="ID":
                a_id=value
            if key=="Hos_name":
                hos=value
            if key=="Hos_loc":
                loc=value
            if key=="Hos_city":
                loc2=value
            if key=="Password":
                pw=value
        f = "insert into hospital values('{}','{}','{}')".format(hos,loc,loc2)
        cursor.execute(f)
        m.commit()
        c = "insert into admin values('{}','{}','{}','{}')".format(nam,a_id,hos,pw)
        cursor.execute(c)
        m.commit()
        e = " SELECT DISTINCT dept_name,count(*) FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND hos_name='{}' GROUP BY dept_name".format(hos)
        cursor.execute(e)
        k=cursor.fetchall()
        details2 = k
        d = "SELECT doc_name,license_ID,designation,dept_name,email,fees,experience,chamber FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.hos_name='{}' order by dept_name;".format(hos)
        cursor.execute(d)
        l=cursor.fetchall()
        details = l
        return adminland(request)
    return render(request,'admin_signup.html')

def adm_login(request):
    global nam, u_id, pw,a_id,hos,details,details2
    if request.method=="POST":
        m=sql.connect(host="localhost",user="root",password="",database='370project')
        cursor=m.cursor()
        d = request.POST
        for key,value in d.items():
            if key=="name":
                a_ID=value
            if key=="password":
                pw=value
        
        c="select * from admin where admin_ID='{}' and password='{}'".format(a_ID,pw)
        cursor.execute(c)
        t=cursor.fetchall()
        

        if t==[]:
            return render(request,'adminerr.html')
        else:
            nam = t[0][0]
            a_id = t[0][1]
            hos = t[0][2]
            pw =  t[0][3]
            d = "SELECT doc_name,license_ID,designation,dept_name,email,fees,experience,chamber FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.hos_name='{}' order by dept_name;".format(hos)
            cursor.execute(d)
            l=cursor.fetchall()
            details = l
            e = " SELECT DISTINCT dept_name,count(*) FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND hos_name='{}' GROUP BY dept_name".format(hos)
            cursor.execute(e)
            k=cursor.fetchall()
            details2 = k
            return render(request,"adm_land1.html",{'g':nam,'dests':details2,'hos':hos,'dests2':details})
    return render(request,'adm_login.html')

def adminland(request):
    global nam, u_id, pw,a_id,hos,details,doc,d_ID,desg,fee,exp,cham,department,dict1,em,details2
    
    doc1 = ''
    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        d = request.POST
        for key,value in d.items():
            if key=="Name":
                d_ID=value
            if key=='ID':
                doc = value
                doc1 = doc
            if key=="Designation":
                desg=value
            
            if key=="Email":
                em=value
            if key=="Fees":
                fee=value
            if key=="Experience":
                exp=value
            if key=="Chamber":
                cham=value
          
            
        c = "update doctor set doc_name='{}',license_ID='{}',email='{}',experience='{}',fees='{}',chamber='{}',designation='{}' where license_ID='{}'".format(d_ID,doc,em,exp,fee,cham,desg,doc1)
        cursor.execute(c)
        m.commit()
        e = " SELECT DISTINCT dept_name,count(*) FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND hos_name='{}' GROUP BY dept_name".format(hos)
        cursor.execute(e)
        k=cursor.fetchall()
        details2 = k
        d = "SELECT doc_name,license_ID,designation,dept_name,email,fees,experience,chamber FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.hos_name='{}' order by dept_name;".format(hos)
        cursor.execute(d)
        l=cursor.fetchall()
        details = l
        return render(request,"adm_land1.html",{'g':nam,'dests':details2,'hos':hos,'dests2':details})
    return render(request,"adminland.html",{'g':nam,'dests':details,'hos':hos})




def ad_doc_add(request):
    global nam, u_id, pw,a_id,hos,details,doc,d_ID,desg,fee,exp,cham,department,dict1,em,rating
    doc1 = ''
    dpt = ''
    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        d = request.POST
        for key,value in d.items():
            if key=="Name":
                d_ID=value
            if key=='ID':
                doc = value
                doc1 = doc
            if key=="Designation":
                desg=value
            if key=='Department':
                department = value
                dpt = dict1[department]
            if key=="Email":
                em=value
            if key=="Fees":
                fee=value
            if key=="Experience":
                exp=value
            if key=="Chamber":
                cham=value
            if key=="Ratings":
                rating = value
            
        c = "insert into doctor values('{}','{}','{}','{}','{}','{}','{}','{}','{}','{}')".format(d_ID,doc,em,exp,fee,cham,desg,dpt,hos,rating)
        cursor.execute(c)
        m.commit()
        e = " SELECT DISTINCT dept_name,count(*) FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND hos_name='{}' GROUP BY dept_name".format(hos)
        cursor.execute(e)
        k=cursor.fetchall()
        details2 = k
        d = "SELECT doc_name,license_ID,designation,dept_name,email,fees,experience,chamber FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.hos_name='{}' order by dept_name;".format(hos)
        cursor.execute(d)
        l=cursor.fetchall()
        details = l
        return render(request,"adm_land1.html",{'g':nam,'dests':details2,'hos':hos,'dests2':details})
    return render(request,"ad_doc_add.html",{'g':nam,'hos':hos})
def delete_doc(request):
    global nam, u_id, pw,a_id,hos,details,doc,d_ID,desg,fee,exp,cham,department,dict1,em,rating
    doc1 = ''
    dpt = ''
    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        d = request.POST
        for key,value in d.items():
            if key=='ID':
                doc = value
        try:
            c = "delete from doctor where license_ID='{}'".format(doc)
            cursor.execute(c)
            m.commit()
            e = " SELECT DISTINCT dept_name,count(*) FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND hos_name='{}' GROUP BY dept_name".format(hos)
            cursor.execute(e)
            k=cursor.fetchall()
            details2 = k
            d = "SELECT doc_name,license_ID,designation,dept_name,email,fees,experience,chamber FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.hos_name='{}' order by dept_name;".format(hos)
            cursor.execute(d)
            l=cursor.fetchall()
            details = l
            return render(request,"adm_land1.html",{'g':nam,'dests':details2,'hos':hos,'dests2':details})
        except Exception:
            g = "delete from review where d_ID='{}'".format(doc)
            cursor.execute(g)
            m.commit()
            c = "delete from doctor where license_ID='{}'".format(doc)
            cursor.execute(c)
            m.commit()
            e = " SELECT DISTINCT dept_name,count(*) FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND hos_name='{}' GROUP BY dept_name".format(hos)
            cursor.execute(e)
            k=cursor.fetchall()
            details2 = k
            d = "SELECT doc_name,license_ID,designation,dept_name,email,fees,experience,chamber FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.hos_name='{}' order by dept_name;".format(hos)
            cursor.execute(d)
            l=cursor.fetchall()
            details = l
            return render(request,"adm_land1.html",{'g':nam,'dests':details2,'hos':hos,'dests2':details})
            
        
    return render(request,"delete_doc.html",{'g':nam,'dests':details,'hos':hos})

def signup(request):
    global name,email,gender,no,dob,pw,id,city,nam, u_id,em, gen, phn, db1, ps, ct,bmi
    
    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        d = request.POST
        for key,value in d.items():
            if key=="Name":
                name=value
                nam = value
            if key=="Email":
                email=value
                em = value
            if key=="Gender":
                gender=value
                gen = value
            if key=="Phone":
                no=value
                phn = value
            if key=="Date_of_birth":
                dob=value
                db1 = value
            if key=="Password":
                pw=value
        c = "insert into login_users values('{}','{}','{}','{}','{}','{}','{}','{}','{}')".format(name,email,gender,no,dob,pw,id,city,bmi)
        cursor.execute(c)
        m.commit()
        return render(request,'regsuccess.html')
    return render(request,'signup.html')




def home(request):
    global nam, u_id,em, gen, phn, db1, ps, ct

    return render(request,'index.html',{'g':nam})

def about(request):
    global nam, u_id,em, gen, phn, db1, ps, ct
    return render(request,'about.html',{'g':nam,'city':ct})

def find_d(request):
    global nam, u_id,em, gen, phn, db1, ps, ct, cit, feess, department, doc
    resl = ''
    rat = ''
  
    t = []
    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        d=request.POST
    
        for key,value in d.items():
            if key=="result":
                resl = value
        res = resl.split(",")
        if len(res)>=3:
            department = res[0]
            cit = res[1]
            feess = res[2]
     
        if cit!='Whole country':
            if feess=='Ratings':
                d = "SELECT department.dept_ID,dept_name,doc_name,ratings,license_ID,fees,designation FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.city='{}' AND department.dept_name='{}' order by doctor.{} DESC;".format(ct,department,feess)
                rat = 'Fees'
                cursor.execute(d)
                t=cursor.fetchall()
            elif feess=='Fees':
                d = "SELECT department.dept_ID,dept_name,doc_name,fees,license_ID,ratings,designation FROM department,hospital,doctor WHERE department.dept_ID=doctor.dept_ID AND hospital.hos_name=doctor.hos_name AND hospital.city='{}' AND department.dept_name='{}' order by doctor.{} DESC;".format(ct,department,feess)
                rat = 'Ratings'
                cursor.execute(d)
                t=cursor.fetchall()
        elif cit=='Whole country':
            if feess=='Ratings':
                d = "SELECT department.dept_ID,dept_name,doc_name,ratings,license_ID,fees,designation FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND department.dept_name='{}' order by doctor.{} DESC;".format(department,feess)
                rat = 'Fees'
                cursor.execute(d)
                t=cursor.fetchall()
            elif feess=='Fees':
                d = "SELECT department.dept_ID,dept_name,doc_name,fees,license_ID,ratings,designation FROM department,doctor WHERE department.dept_ID=doctor.dept_ID AND department.dept_name='{}' order by doctor.{} DESC;".format(department,feess)
                rat = 'Ratings'
                cursor.execute(d)
                t=cursor.fetchall()
    elif request.method=='GET':
        e=request.GET
        for key,value in e.items():
            if key=="res":
                doc = value
                m = sql.connect(host='localhost',user='root',password='',database='370project')
                cursor = m.cursor()

                d = "select * from doctor where license_ID='{}'".format(doc)
                cursor.execute(d)
                t=cursor.fetchall()

                s = t[0]
                e = "select login_users.name,review.comment,review.ratings,review.p_ID from (review inner join login_users on review.p_ID=login_users.ID) where review.d_ID='{}'".format(doc)
                cursor.execute(e)
                r=cursor.fetchall()
                if int(s[-1])<30:
                    s2 = int(s[-1]) + 1
                    if request.method=='GET':
                        d5 = "update doctor set Appointments='{}' where license_ID='{}'".format(s2,doc)
                        cursor.execute(d5)
                        m.commit()
                else:
                    s2 = 'Sorry no appointments available'

                return render(request,"drprof.html",{'g':nam,'fields':s,'dep':department,'dests':r,'app_no':s2})
        
    return render (request,'find_doctor.html',{'g':nam,'city':ct,'dests':t,'fees':feess,'rat':rat})

def doctorprof(request):
    global nam, u_id,em, gen, phn, db1, ps, ct, cit, feess, department, doc, msgs, rating 
    m = sql.connect(host='localhost',user='root',password='',database='370project')
    cursor = m.cursor()

    d = "select * from doctor where license_ID='{}'".format(doc)
    cursor.execute(d)
    t=cursor.fetchall()

    s = t[0]
    e = "select login_users.name,review.comment,review.ratings,review.p_ID from (review inner join login_users on review.p_ID=login_users.ID) where review.d_ID='{}'".format(doc)
    cursor.execute(e)
    r=cursor.fetchall()
    if int(s[-1])<30:
        s2 = int(s[-1]) + 1
        if request.method=='GET':
            d5 = "update doctor set Appointments='{}' where license_ID='{}'".format(s2,doc)
            cursor.execute(d5)
            m.commit()
    else:
        s2 = 'Sorry no appointments available'

    return render(request,"drprof.html",{'g':nam,'fields':s,'dep':department,'dests':r,'app_no':s2})

def cancel_app(request):
    global nam, u_id,em, gen, phn, db1, ps, ct, cit, feess, department, doc, msgs, rating 
    m = sql.connect(host='localhost',user='root',password='',database='370project')
    cursor = m.cursor()

    d = "select * from doctor where license_ID='{}'".format(doc)
    cursor.execute(d)
    t=cursor.fetchall()

    s = t[0]
    e = "select login_users.name,review.comment,review.ratings,review.p_ID from (review inner join login_users on review.p_ID=login_users.ID) where review.d_ID='{}'".format(doc)
    cursor.execute(e)
    r=cursor.fetchall()
    s2 = int(s[-1]) - 1
    if request.method=='GET':
        d5 = "update doctor set Appointments='{}' where license_ID='{}'".format(s2,doc)
        cursor.execute(d5)
        m.commit()
           
    return render(request,"doctorprof.html",{'g':nam,'fields':s,'dep':department,'dests':r})

def drrev(request):
    global nam, u_id,em, gen, phn, db1, ps, ct, cit, feess, department, doc, msgs, rating 
    m = sql.connect(host='localhost',user='root',password='',database='370project')
    cursor = m.cursor()
    d = "select * from doctor where license_ID='{}'".format(doc)
    cursor.execute(d)
    t=cursor.fetchall()
    rating2 = t[0][-1]
   
    e = "select login_users.name,review.comment,review.ratings,review.p_ID from (review inner join login_users on review.p_ID=login_users.ID) where review.d_ID='{}'".format(doc)
    cursor.execute(e)
    r=cursor.fetchall()
    exist = 'Post a Review'
    c2 = ['','','']

    for count in range(len(r)):
        if r[count][3]==u_id:
            c2 = r[count]
            exist = 'Update your review'
    if request.method=='POST':
        f = request.POST
        for key,value in f.items():
            if key=="msg":
                msgs = value
            if key=="rate":
                rating = value
        if exist=='Post a Review':
            rating3 = (float(rating)+float(rating2))/2
            c1 = "Insert into review values('{}','{}','{}','{}')".format(doc,u_id,msgs,rating)
            cursor.execute(c1)
            m.commit() 
            c3 = "update doctor set ratings='{}' where license_ID='{}'".format(rating3,doc)
            cursor.execute(c3)
            m.commit() 
            return doctorprof(request)
        else:
            rating3 = (float(rating)+float(rating2))/2
            c1 = "update review set comment='{}',ratings='{}' where d_ID='{}' and p_ID='{}'".format(msgs,rating,doc,u_id)
            cursor.execute(c1)
            m.commit()
            c3 = "update doctor set ratings='{}' where license_ID='{}'".format(rating3,doc)
            cursor.execute(c3)
            m.commit()  
            return doctorprof(request)

    return render(request,"drreview.html",{'g':nam,'dep':department,'m_rev':c2,'c2':exist})
def deleterev(request):
    global nam, u_id,em, gen, phn, db1, ps, ct, cit, feess, department, doc, msgs, rating 
    m = sql.connect(host='localhost',user='root',password='',database='370project')
    cursor = m.cursor() 
    c1 = "Delete from review where d_id='{}' and p_id='{}'".format(doc,u_id)
    cursor.execute(c1)
    m.commit() 
    return doctorprof(request)

def blog(request):
    global nam, u_id,em, gen, phn, db1, ps, ct
    return render(request,"blog.html",{'g':nam})

def profile(request):
    global nam, u_id,em, gen, phn, db1, ps, ct,bmi
    t_date = date.today()
    m = sql.connect(host='localhost',user='root',password='',database='370project')
    cursor = m.cursor()
    d = "select doctor.doc_name,review.comment,review.ratings,review.d_ID from (review inner join doctor on review.d_ID=doctor.license_ID) where review.p_ID='{}'".format(u_id)
    cursor.execute(d)
    t=cursor.fetchall()
    
    return render(request,"profile.html",{'g':nam,'a':nam,'b':em,'c':gen,'d':phn,'e':db1,'f':ct,'age':(t_date.year-db1.year),'dests':t,'bmi':bmi})

def profileedit(request):
    global nam, u_id,em, gen, phn, db1, ps, ct

    if request.method=='POST':
        m = sql.connect(host='localhost',user='root',password='',database='370project')
        cursor = m.cursor()
        t_date = date.today()
        d = request.POST
        for key,value in d.items():
            if key=="Name":
                nam = value
            if key=="Email":
                em = value
            if key=="Gender":
                gen = value
            if key=="Phone":
                phn = value
            if key=="Date_of_birth":
                db1 = value
            if key=="City":
                ct = value
        c = "update login_users set Name='{}',Email='{}',Gender='{}',Phone='{}',Date_of_birth='{}',City='{}' where ID='{}'".format(nam,em,gen,phn,db1,ct,u_id)
        cursor.execute(c)
        m.commit()

        d = "select doctor.doc_name,review.comment,review.ratings,review.d_ID from (review inner join doctor on review.d_ID=doctor.license_ID) where review.p_ID='{}'".format(u_id)
        cursor.execute(d)
        t=cursor.fetchall()
        #for ease of access we declare new variable
        x = db1.split(' ')
        y = x[0].split("-")
        
        return render(request,'profile.html',{'g':nam,'a':nam,'b':em,'c':gen,'d':phn,'e':db1,'f':ct,'age':t_date.year-int(y[0]),'dests':t})

    return render(request,'prof_edit.html',{'g':nam,'a':nam,'b':em,'c':gen,'d':phn,'e':db1,'f':ct})

def bmi(request):
    global nam, u_id,em, gen, phn, db1, ps, ct,bmi
    
    res = ''
    try:
        if request.method=="POST":
            d = request.POST
            for key,value in d.items():
                if key=="weight":
                    wt = float(value)
                if key=="height":
                    ht = float(value)
            
            bmi = wt/((ht/100)*(ht/100))
            if bmi<18.5:
                res = "You are in the underweight range"
            elif 18.5<=bmi<24.9:
                res = "You are in the healthy weight range"
            elif 25<=bmi<29.9:
                res = "You are in the overweight range"
            elif 30<=bmi<34.9:
                res = "You are in the first stage of obesity"
            elif 35<=bmi<39.9:
                res = "You are in the second stage of obesity"
            elif bmi>=40:
                res = "You are in extreme obese range"
            m = sql.connect(host='localhost',user='root',password='',database='370project')
            cursor = m.cursor()
            c = "update login_users set BMI='{}' where ID='{}'".format(bmi,u_id)
            cursor.execute(c)
            m.commit()
    except:
        bmi = "Invalid Input"
    return render(request,"bmi.html",{'g':nam,'bmi':bmi,'res':res})

def news(request):
    global nam, u_id,em, gen, phn, db1, ps, ct
    client = gnewsclient.NewsClient(language = 'english',location='Bangladesh',topic='health',max_results=12)

    newsList = client.get_news()
    global  title1, author1, link1, img_link1 
    title1 = []
    author1 = [] 
    link1 = [] 
    img_link1 = ['https://images.pexels.com/photos/518543/pexels-photo-518543.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','https://images.pexels.com/photos/4033148/pexels-photo-4033148.jpeg?auto=compress&cs=tinysrgb&w=600','https://images.pexels.com/photos/3938022/pexels-photo-3938022.jpeg?auto=compress&cs=tinysrgb&w=600','https://images.pexels.com/photos/7089401/pexels-photo-7089401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','https://images.pexels.com/photos/2280547/pexels-photo-2280547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','https://images.pexels.com/photos/6823515/pexels-photo-6823515.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','https://images.pexels.com/photos/6823514/pexels-photo-6823514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','https://images.pexels.com/photos/5994627/pexels-photo-5994627.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','https://images.unsplash.com/photo-1576091160550-2173dba999ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80']
       
    def dest(item):
        
        n =item['title'].split("-")
        author = n[1]
        author1.append(author)
        title = n[0]
        title1.append(title)
        link =item['link']
        link1.append(link)
       
        
    for i in range(1,10):
        item = newsList[i]
        dest(item)
        
    return render(request,'news.html',{'g':nam,
    'title1':title1[0],'author1':author1[0],'link1':link1[0],'img_link1':img_link1[0],
    'title2':title1[1],'author2':author1[1],'link2':link1[1],'img_link2':img_link1[1],
    'title3':title1[2],'author3':author1[2],'link3':link1[2],'img_link3':img_link1[2],
    'title4':title1[3],'author4':author1[3],'link4':link1[3],'img_link4':img_link1[3],
    'title5':title1[4],'author5':author1[4],'link5':link1[4],'img_link5':img_link1[4],
    'title6':title1[5],'author6':author1[5],'link6':link1[5],'img_link6':img_link1[5],
    'title7':title1[6],'author7':author1[6],'link7':link1[6],'img_link7':img_link1[6],
    'title8':title1[7],'author8':author1[7],'link8':link1[7],'img_link8':img_link1[7],
    'title9':title1[8],'author9':author1[8],'link9':link1[8],'img_link9':img_link1[8]})
    

def faq(request):
    global nam, u_id,em, gen, phn, db1, ps, ct
    return render(request,"faq.html",{'g':nam})