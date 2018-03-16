<%@ Page Title="" Language="C#" MasterPageFile="~/ST_HOME.master" AutoEventWireup="true" CodeFile="ST_HOME_INDEX.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html lang="en">
<head>
    <link href="css/ST_HOME_IN.css" rel="stylesheet" />
    <link href="css/component_ST_HOME_IN.css" rel="stylesheet" />
    <link href="css/demo1_ST_HOME_IN.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        });
    </script>
   

<body>
    
  
    <div class="mn">
        <span class="counter n">52,147</span>
        <span class="S1">STUDENTS</span>
        <span class="counter n">547</span>
        <span class="s2">FACULTY</span>
        <span class="counter n">2147</span>
        <span class="s3">VISITORS</span>
    </div>
   









    <div class="container">
        
        <div id="tabs" class="tabs">
            <nav>
                <ul>
                    <li><a href="#section-1" class="icon-shop"><span>MCA501T</span></a></li>
                    <li><a href="#section-2" class="icon-cup"><span>MCA502T</span></a></li>
                    <li><a href="#section-3" class="icon-food"><span>MCA503T</span></a></li>
                    <li><a href="#section-4" class="icon-lab"><span>ELE504T</span></a></li>
                    <li><a href="#section-5" class="icon-truck"><span>MCA505P</span></a></li>
                    <li><a href="#section-5" class="icon-truck"><span>MCA506P</span></a></li>
                </ul>
            </nav>
            <div class="content">
                <section id="section-1">
                    <div class="mediabox">
                        <h1>Advanced Web Programming</h1>
                        <h3>Unit 1</h3>
                        <p>Perl,CGI Programming:Origins and uses of perl;Scalars and their operations;assignment statements and simple input and output;Hashes,CGI.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 2</h3>
                        <p>Servlets and java server pages:overview of servlets ;servlet details;PHP:origins and uses of PHP;General syntactic characteristics.cookies;session tracking.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 3</h3>
                        <p>Database access through the web:relational databases;an introduction to SQL;architectures for database access:the mysql database system.database access with PERL and MYSQL;PHP AND MYSQL and JDBC and MYSQL</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 4</h3>
                        <p>Introduction to Ruby Rails:Origins  and uses of ruby;Scalar types and their operations; simple input and output:control statements:fundamentals of arrays:Hashes. </p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 5</h3>
                        <p>Introduction to AJAX:Overview of Ajax;the basics of ajax;rails with ajax</p>
                    </div>

                </section>


                <section id="section-2">
                    <div class="mediabox">
                        <h1>Advanced Database Management Systems</h1>
                        <h3>Unit 1</h3>
                        <p>NOSQL and Query optimization:Definition of NOSQL,History of NOSQL and Differnt NOSQL products.Exploring MongoDB Basics:NOSQL storage architecure CRUD operations with mongoDB,querying ,indexing and oredering data sets(mongodb/couchdb/cassandra).NOSQL in CLOUD. </p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 2</h3>
                        <p>SAN:introduction to information storage and management,Lifecycle components of storage system environment.RAID components and RAID levels. </p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 3</h3>
                        <p>Data warehousing and data mining: data warehouse architecture,data warehouse implementation. mining methods ,mining  various kinds of association rules.data mining :data mining applications, social network analysis.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 4</h3>
                        <p>Big Data:introduction to principles and practice of systems that improve performance through experience.Topics include statistical learning framework.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 5</h3>
                        <p>Information Retrieval and Search Engines: Architecture of search engine, Ranking and Evaluation; CRAWLS AND FEEDS: Crawling the Web, Directory Crawling, Conversion Problem, Storing the Documents, Detecting Duplicates. Processing text: Text Statistics, Document Parsing, Document Structure and Markup, Link Analysis, Information Extraction, Internationalization; RANKING WITH INDEXES: Inverted indexes, Compression, Entropy and Ambiguity, Delta Encoding, Bit-aligned codes, Auxiliary Structures, Index Construction, Query Processing.</p>
                    </div>
                </section>


                <section id="section-3">
                    
                    <div class="mediabox">
                        <h1>ARTIFICIAL INTELLIGENCE</h1>
                        <h3>Unit 1</h3>
                        <p>Introduction to Artificial Intelligence: Definition, AI Applications, AI representation, Properties of internal Representation, Heuristic search techniques. Best first search, mean and end analysis, A* and AO* Algorithm, Game Playing, Minimize search procedure, Alpha beta cutoffs, waiting for Quiscence, Secondary search.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 2</h3>
                        <p>Knowledge representation using predicate logic: predicate calculus, Predicate and arguments, ISA hierarchy, frame notation, resolution, Natural deduction. Knowledge representation using non monotonic logic: TMS, statistical and probabilistic reasoning, fuzzy logic, structure knowledge representation, semantic net, Frames, Script, Conceptual dependency</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 3</h3>
                        <p>Planning: block world, strips, Implementation using goal stack, Non linear planning with goal stacks, Hierarchical planning, list commitment strategy. Perception: Action, Robot Architecture, Vision, Texture and images, representing and recognizing scenes, waltz algorithm, Constraint determination, Trihedral and non trihedral figures labeling.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 4</h3>
                        <p>Learning: Learning as induction matching algorithms. Failure driver learning, learning in general problem solving concept learning. Neural Networks: Introduction to neural networks and perception-qualitative Analysis only, neural net architecture and applications.</p>
                    </div>
                    <div class="mediabox">
                        <h3>Unit 5</h3>
                        <p>Natural language processing and understanding and pragmatic, syntactic, semantic, analysis, RTN, ATN, understanding sentences. Expert system: Utilization and functionality, architecture of expert system, knowledge representation, two case studies on expert systems</p>
                    </div>
                </section>


                <section id="section-4">
                    <div class="mediabox">
                        <h1>Open Elective-Wright it Right</h1>
                     </div>
                    
                    
                </section>


                <section id="section-5">
                    <div class="media">
                        <h1>Advanced Web Programming Lab</h1>
                        <h3>Lab Program List</h3>
                        <p>Please refer the NOTES Section for the follwing Lab Programs </p>
                    </div>                    
                    </section>


                <section id="section-6">
                    <div class="media">
                        <h1>Mini Project</h1>
                        
                        <p>The students are supposed to develop a mini – project for above mentioned lab. The students can do the project in a group (team) consisting of not more than 2 students. A project report must be submitted by each team.</p>
                    </div>
                    
                    
                </section>

            </div>
            <!-- /content -->
        </div>
        <!-- /tabs -->
        <p class="info">Syllabus Provided by <a href="http://bangaloreuniversity.ac.in/">BANGALORE UNIVERSITY</a></p>
    </div>
 <script src="js/cbpFWTabs.js"></script>
		<script>
            new CBPFWTabs(document.getElementById('tabs'));
		</script>



   <script src="js/waypoints.min.js"></script>
   
<script src="js/jquery.counterup.min.js"></script>
    
    
    
    

</body>
</html>


 
</asp:Content>

