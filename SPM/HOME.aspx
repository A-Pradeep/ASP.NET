<%@ Page Title="" Language="C#" MasterPageFile="~/INDEX1.master" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/carasole1.css" rel="stylesheet" />
    <div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            </ol>
            <br />
            <br />

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="center-block" src="images/SPM-home_edited.png" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img class="center-block" src="images/attendance-app.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img class="center-block" src="images/BeHere.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img class="center-block" src="images/slide2_edited.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img class="center-block" src="images/SPM logo1.png" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                ...
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>
        <br />
       
<!-- Middle Contents -->
        <div class="container center">
            <div class="row">

                <div class="col-lg-4">
                    <img class="img-circle" src="images/attendance.jpg" alt="thumbs1" height="140" width="140" />
                    <h2 style="color:white;"> Attendance</h2>
                    <p style="color:white;">
                      Attending class regularly is one strategy to maintain satisfactory academic progress.
                      The attendance is important because students are more likely to succeed in academics when they attend school consistently. It's difficult for the teacher and the class to build their skills and progress if a large number of students are frequently absent.
                      One of the most fascinating things about joining college is that,unlike school,you can actually get away with bunking classes.Or so one thinks,and wishes.But in most colleges,if one does not have the minimum criteria of 75% attendance,you are not allowed to sit for examinations.
                      Regularly attending and participating in class shows that you are a serious and genuine student.
                        /<p>
                   
                </div>

                <div class="col-lg-4">
                    <img class="img-circle" src="images/statistics.jpg" alt="thumbs1" height="140" width="140" />
                    <h2 style="color:white;">Internals Marks </h2>
                    <p style="color:white;">
                     The internal Mark is very crucial.If we failed to score our internal marks ,its tuff to get good marks in the examination.As the internal marks contribute a significant part in the final score.There are many ways to score a good internal marks.You guys have to keep in touch you master.Take good score in the internal exams.Complete your assignments and practical well in time and its is obviuous you get a good score in the internal Exam.
                    Internal assessment marks gives the opportunity to subject faculty to know students knowledge both in theory and practicals. Based on this information faculty will guide the students properly. The high score of internal marks will increase overall percentage of marks.
                    </p>

                   
                </div>

                <div class="col-lg-4">
                    <img class="img-circle" src="images/notes.jpg" alt="thumbs1" height="140" width="140" />
                    <h2 style="color:white;">Notes</h2>
                    <p style="color:white;">
                        Good notes will help you understand what material is important and what material is only secondary. Note taking provides students with direction, keeps them organized, and helps them keep up with their studies.Students that learn to take notes do a better job of listening while in class.
                    Based on their findings, these researchers recommend providing students with partial notes. Giving students some notes conveys the instructor’s sensitivity to their concerns about getting the material they need from a lecture. If those notes provide the outline or structure of the material, students can concentrate on understanding the information rather than on trying to figure out how to prioritize and organize the material
                    </p>
                    
                </div>

            </div>
        </div>
   <br />
    <br />

    <br />

    <br />









     <!-- Footer -->

    <footer>
        <div class="navbar navbar-default" bottom="0">
            <div class="container foo">
                <p> Copyright &copy; 2016-2017 All rights reserved. East West College of Management&middot;</p>
                
            </div>
        </div>
    </footer>

        <!-- Footer -->


</asp:Content>

