-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 03:56 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_with_nikhil`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_batch`
--

CREATE TABLE `add_batch` (
  `id` int(11) NOT NULL,
  `course_name` varchar(120) DEFAULT NULL,
  `days` varchar(120) NOT NULL,
  `time` varchar(120) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_batch`
--

INSERT INTO `add_batch` (`id`, `course_name`, `days`, `time`, `date`) VALUES
(1, 'python', 'Monday,Wednesday,Friday,Sunday', '10:30:00-12:30:00', '2021-09-30'),
(2, 'Django web Development', 'Tuesday,Thursday,Saturday', '01:20:00-03:00:00', '2021-10-01'),
(3, 'Flask Web Development', 'Monday,Wednesday,Friday', '04:00:00-05:30:00', '2021-10-01'),
(4, 'Data Structure and Algorithm', 'Saturday,Sunday', '10:00:00-12:00:00', '2021-10-01'),
(5, 'Data Science', 'Monday,Wednesday,Friday,Sunday', '11:54:00-01:00:00', '2021-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `is_seen` int(11) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `contact_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `is_seen`, `username`, `email`, `phone`, `content`, `contact_posted`) VALUES
(1, 1, 'Nikhil Sharma', 'deshiboys0@gmail.com', '07011393525', 'Hello How are you', '2021-06-20 11:05:39'),
(2, 1, 'Anuj Goyal', 'anujgoyal.1995@gmail.com', '9654991613', 'Hello your tutorials is very helpful for me, please continue this series.', '2021-06-20 11:21:29'),
(3, 1, 'Vijay', 'vijaysharma29871@gmail.com', '08287330737', 'Hi you tutorials are very helpful for me please continues this blog', '2021-06-21 04:37:45'),
(4, 1, 'Nikhil', 'sales@jumbodistributors.in', '07011393525', 'dsdsds', '2021-06-22 04:43:15'),
(5, 1, 'Sanjeet', 'palsanjeet007@gmail.com', '08287330737', 'Nice tutorials ', '2021-06-26 08:13:39'),
(6, 1, 'Puneet kumar', 'punit@evanik.net', '9877896746', 'Hi Your blog is very helpful for me please continue', '2021-06-26 10:48:00'),
(7, 1, 'Nikhil Sharma', 'deshiboys0@gmail.com', '07011393525', 'I want to join this course', '2021-09-09 04:48:21'),
(8, 1, 'Nikhil', 'nikhil.sharma@decorist.com', '07011393525', 'dsdsfdsfds', '2021-09-10 04:33:37'),
(9, 1, 'Arpit Jain', 'arpit.jain@evanik.com', '7011181460', 'I want to join this course', '2021-09-11 09:40:28'),
(10, 1, 'Nikhil Sharma', 'nikhil.s@acldigital.com', '07011393525', 'qdsadsadsad', '2021-09-12 17:24:16'),
(11, 1, 'Jai Sharma', 'jaisharma.id@gmail.com', '9015126984', 'I want to join this course', '2021-09-25 09:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`) VALUES
(1, 'Python'),
(2, 'Data Structure and Algorithm'),
(3, 'Django');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `phone` varchar(120) NOT NULL,
  `message` varchar(120) DEFAULT NULL,
  `enquiry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `phone`, `message`, `enquiry_date`) VALUES
(1, 'Nikhil Sharma', '07011393525', 'What is timing of new python course', '2021-09-11 12:46:52'),
(2, 'Nikhil', '08287330737', 'When Can I join?', '2021-09-11 12:48:22'),
(3, 'Nishi Sharma', '7015693525', 'what is timing of new course', '2021-09-11 12:53:20'),
(4, 'Nikhil Sharma', '917011393525', 'Fees of course', '2021-09-11 13:02:00'),
(5, 'मुनीश', '7011393525', 'Price', '2021-09-12 15:14:36'),
(6, 'Nishi sharma', '08287330737', 'How is couser', '2021-09-12 15:14:49'),
(7, 'Nishi Sharma', '7011393525', 'dadadsada', '2021-09-12 17:15:37'),
(8, 'Nishi sharma', '8860627797', 'HEllo', '2021-09-12 17:15:56'),
(9, 'Nikhil Sharma', '08287330737', 'Python Course Durations', '2021-09-13 04:30:41'),
(10, 'Nishi Sharma', '08287330737', 'HELLOOOOO', '2021-09-13 04:31:57'),
(11, 'Nishi Sharma', '7011393525', 'ASASASASASA', '2021-09-13 04:32:05'),
(12, 'Nikhil Sharma', '7011393525', 'ASADSDSADSA', '2021-09-13 04:32:12'),
(13, 'Nikhil Sharma', '7011393525', 'Need this course\r\n', '2021-09-18 17:44:41'),
(14, 'Nikhil Sharma', '7011393525', 'dsdadas', '2021-09-20 18:30:56'),
(15, 'Nikhil Sharma', '7011393525', 'erfhgjkl', '2021-10-02 11:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date_posted` datetime NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `date_posted`, `content`, `user_id`, `course_id`) VALUES
(1, 'Python Introduction', '2021-06-14 10:50:51', 'Python is a general purpose high level programming language.\r\n\r\nPython was developed by Guido Van Rossam in 1989 while working at National Research Institute at Netherlands.\r\n\r\nBut officially Python was made available to public in 1991. The official Date of Birth for Python is : Feb 20th 1991.\r\nPython is recommended as first programming language for beginners.\r\n\r\n\r\nEg1: To print Helloworld:\r\n\r\nJava:\r\n1) public class HelloWorld\r\n2) {\r\n3) p s v main(String[] args)\r\n4) {\r\n5) SOP(\"Hello world\");\r\n6) }\r\n7) } \r\n\r\nC:\r\n1) #include<stdio.h>\r\n2) void main()\r\n3) {\r\n4) print(\"Hello world\");\r\n5) }\r\n\r\nPython:\r\nprint(\"Hello World\")\r\n\r\nEg2: To print the sum of 2 numbers\r\n\r\nJava:\r\n1) public class Add\r\n2) {\r\n3) public static void main(String[] args)\r\n4) {\r\n5) int a,b;\r\n6) a =10;\r\n7) b=20;\r\n8) System.out.println(\"The Sum:\"+(a+b));\r\n9) }\r\n10) } \r\n\r\nC:\r\n1) #include <stdio.h>\r\n2)\r\n3) void main()\r\n4) {\r\n5) int a,b;\r\n6) a =10;\r\n7) b=20;\r\n8) printf(\"The Sum:%d\",(a+b));\r\n9) }\r\n\r\nPython:\r\n1) a=10\r\n2) b=20\r\n3) print(\"The Sum:\",(a+b)) \r\n\r\nThe name Python was selected from the TV Show \"The Complete Monty Python\'s Circus\", which was broadcasted in BBC from 1969 to 1974. Guido developed Python language by taking almost all programming features from different languages\r\n\r\n1. Functional Programming Features from C\r\n2. Object Oriented Programming Features from C++\r\n3. Scripting Language Features from Perl and Shell Script\r\n4. Modular Programming Features from Modula-3\r\n\r\nMost of syntax in Python Derived from C and ABC languages.\r\nWhere we can use Python:\r\nWe can use everywhere. The most common important application areas are\r\n1. For developing Desktop Applications\r\n2. For developing web Applications\r\n3. For developing database Applications\r\n4. For Network Programming\r\n5. For developing games\r\n6. For Data Analysis Applications\r\n7. For Machine Learning\r\n8. For developing Artificial Intelligence Applications\r\n9. For IOT\r\n\r\nNote:\r\nInternally Google and Youtube use Python coding\r\nNASA and Nework Stock Exchange Applications developed by Python.\r\nTop Software companies like Google, Microsoft, IBM, Yahoo using Python\r\n\r\n', 1, 1),
(2, 'Features of Python', '2021-06-14 11:13:49', '1. Simple and easy to learn:\r\nPython is a simple programming language. When we read Python program,we can feel like reading english statements. The syntaxes are very simple and only 30+ kerywords are available. When compared with other languages, we can write programs with very less number of lines. Hence more readability and simplicity. We can reduce development and cost of the project.\r\n\r\n2. Freeware and Open Source:\r\nWe can use Python software without any licence and it is freeware. Its source code is open,so that we can we can customize based on our requirement. Eg: Jython is customized version of Python to work with Java Applications.\r\n\r\n3. High Level Programming language:\r\nPython is high level programming language and hence it is programmer friendly language. Being a programmer we are not required to concentrate low level activities like memory management and security etc..\r\n\r\n4. Platform Independent:\r\nOnce we write a Python program,it can run on any platform without rewriting once again. Internally PVM is responsible to convert into machine understandable form.\r\n\r\n5. Portability:\r\nPython programs are portable. ie we can migrate from one platform to another platform very easily. Python programs will provide same results on any paltform.\r\n\r\n6. Dynamically Typed:\r\nIn Python we are not required to declare type for variables. Whenever we are assigning the value, based on value, type will be allocated automatically.Hence Python is considered as dynamically typed language. But Java, C etc are Statically Typed Languages b\'z we have to provide type at the beginning only. This dynamic typing nature will provide more flexibility to the programmer.\r\n\r\n7. Both Procedure Oriented and Object Oriented:\r\nPython language supports both Procedure oriented (like C, pascal etc) and object oriented\r\n(like C++,Java) features. Hence we can get benefits of both like security and reusability etc\r\n\r\n8. Interpreted:\r\nWe are not required to compile Python programs explcitly. Internally Python interpreter will take care that compilation. If compilation fails interpreter raised syntax errors. Once compilation success then PVM (Python Virtual Machine) is responsible to execute.\r\n\r\n9. Extensible:\r\nWe can use other language programs in Python. The main advantages of this approach are:\r\n1. We can use already existing legacy non-Python code\r\n2. We can improve performance of the application\r\n\r\n10. Embedded:\r\nWe can use Python programs in any other language programs. i.e we can embedd Python programs anywhere.\r\n\r\n11. Extensive Library:\r\nPython has a rich inbuilt library. Being a programmer we can use this library directly and we are not responsible to implement the functionality. etc...\r\n\r\n', 1, 1),
(3, ' Limitations of Python', '2021-06-15 04:16:29', '1. Performance wise not up to the mark because it is interpreted language. \r\n2. Not using for mobile Applications', 1, 1),
(4, 'Flavors of Python', '2021-06-15 04:17:47', '1. CPython:\r\nIt is the standard flavor of Python. It can be used to work with C lanugage Applications\r\n\r\n2.  Jython or JPython:\r\nIt is for Java Applications. It can run on JVM.\r\n\r\n3. IronPython:\r\nIt is for C#.Net platform.\r\n\r\n4. PyPy:\r\nThe main advantage of PyPy is performance will be improved because JIT compiler is available inside PVM.\r\n\r\n5. RubyPython\r\n For Ruby Platforms.\r\n\r\n6. AnacondaPython\r\nIt is specially designed for handling large volume of data processing.\r\n', 1, 1),
(5, 'Python Versions', '2021-06-15 04:28:27', 'Python 1.0V introduced in Jan 1994\r\nPython 2.0V introduced in October 2000\r\nPython 3.0V introduced in December 2008\r\n\r\nNote: Python 3 won\'t provide backward compatibility to Python2\r\ni.e there is no guarantee that Python2 programs will run in Python3.\r\n\r\nCurrent versions\r\nPython 3.9.5                                                           Python 2.7.13', 1, 1),
(6, 'Identifiers', '2021-06-15 04:30:32', 'A name in Python program is called identifier.\r\nIt can be class name or function name or module name or variable name.\r\na = 10\r\n\r\nRules to define identifiers in Python\r\n\r\n1. The only allowed characters in Python are\r\n    * alphabet symbols(either lower case or upper case)\r\n    * digits(0 to 9)\r\n    * underscore symbol(_)\r\n By mistake if we are using any other symbol like $ then we will get syntax error.\r\n    * cash = 10 -> valid\r\n    * ca$h =20 -> Not valid\r\n\r\n2. Identifier should not starts with digit\r\n    * 123total -> Not valid\r\n    * total123 -> valid\r\n\r\n3. Identifiers are case sensitive. Of course Python language is case sensitive language. \r\n    * total=10\r\n    * TOTAL=999\r\n    * print(total) #10\r\n    * print(TOTAL) #999\r\n\r\nIdentifier\r\n    1. Alphabet Symbols (Either Upper case OR Lower case)\r\n    2. If Identifier is start with Underscore (_) then it indicates it is private.\r\n    3. Identifier should not start with Digits.\r\n    4. Identifiers are case sensitive.\r\n    5. We cannot use reserved words as identifiers\r\n         Eg: def=10 -> Not valid\r\n    6. There is no length limit for Python identifiers. But not recommended to use too lengthy \r\n        identifiers.\r\n    7. Dollor ($) Symbol is not allowed in Python.\r\n\r\n\r\nQ. Which of the following are valid Python identifiers?\r\n                1) 123total -> Not valid\r\n                2) total123 -> valid\r\n                3) java2share -> valid\r\n                4) ca$h -> Not valid\r\n                5) _abc_abc_ -> valid\r\n                6) def -> Not valid\r\n                7) if -> Not valid\r\n\r\nNote:\r\n    1. If identifier starts with _ symbol then it indicates that it is private\r\n    2. If identifier starts with __(two under score symbols) indicating that strongly private \r\n    identifier.\r\n    3.If the identifier starts and ends with two underscore symbols then the identifier is \r\n     language defined special name,which is also known as magic methods.\r\n    Eg: __add__\r\n\r\n', 1, 1),
(7, 'Reserved Words', '2021-06-15 06:32:48', 'In Python some words are reserved to represent some meaning or functionality. Such type  of words are called Reserved words.\r\n\r\nThere are 33 reserved words available in Python.\r\n\r\n* True,False,None\r\n* and, or ,not,is\r\n* if,elif,else\r\n* while,for,break,continue,return,in,yield\r\n* try,except,finally,raise,assert\r\n* import,from,as,class,def,pass,global, nonlocal, lambda,del,with\r\n\r\nNote:\r\n1. All Reserved words in Python contain only alphabet symbols.\r\n2. Except the following 3 reserved words, all contain only lower case alphabet symbols.\r\n* True\r\n* False\r\n* None\r\n\r\nEg:\r\n a= true -> Not Valid\r\n a=True -> Valid\r\n\r\nIn the there is one module that us keyword  this will help to find out all the reserved keywords in python.\r\n\r\nEg:-\r\n\r\n>>> import keyword\r\n>>> keyword.kwlist\r\n[\'False\', \'None\', \'True\', \'and\', \'as\', \'assert\', \'break\', \'class\', \'continue\', \'def\', \'del\', \'elif\', \'else\', \r\n\'except\', \'finally\', \'for\', \'from\', \'global\', \'if\', \'import\', \'in\', \'is\', \'lambda\', \'nonlocal\', \'not\', \'or\', \r\n\'pass\', \'raise\', \'return\', \'try\', \'while\', \'with\', \'yield\']\r\n\r\n', 1, 1),
(8, 'Data Types', '2021-06-15 10:17:33', 'Data Type represent the type of data present inside a variable.\r\n\r\nIn Python we are not required to specify the type explicitly. Based on value provided,the  type will be assigned automatically.Hence Python is Dynamically Typed Language.\r\n\r\nPython contains the following inbuilt data types\r\n1. int\r\n2. float\r\n3.complex\r\n4.bool\r\n5.str\r\n6.bytes\r\n7.bytearray\r\n8.range\r\n9.list\r\n10.tuple\r\n11.set\r\n12.frozenset\r\n13.dict\r\n14.None\r\n\r\nNote: Python contains several inbuilt functions\r\n1.type()\r\n to check the type of variable\r\n\r\n2. id()\r\n to get address of object\r\n\r\n3. print()\r\n to print the value\r\nIn Python everything is object\r\n\r\nint data type:\r\nWe can use int data type to represent whole numbers (integral values)\r\nEg:\r\n a=10\r\n type(a) #int\r\n\r\nNote:\r\nIn Python2 we have long data type to represent very large integral values.\r\nBut in Python3 there is no long type explicitly and we can represent long values also by \r\nusing int type only.\r\n\r\nWe can represent int values in the following ways\r\n\r\n1. Decimal form\r\n2. Binary form\r\n3. Octal form\r\n4. Hexa decimal form\r\n\r\n1. Decimal form(base-10):\r\nIt is the default number system in Python\r\nThe allowed digits are: 0 to 9\r\nEg: a =10\r\n\r\n2. Binary form(Base-2):\r\nThe allowed digits are : 0 & 1\r\nLiteral value should be prefixed with 0b or 0B\r\nEg: a = 0B1111\r\n a =0B123\r\n a=b111\r\n\r\n3. Octal Form(Base-8):\r\nThe allowed digits are : 0 to 7\r\nLiteral value should be prefixed with 0o or 0O\r\nEg: a=0o123\r\n a=0o786\r\n\r\n4. Hexa Decimal Form(Base-16):\r\nThe allowed digits are : 0 to 9, a-f (both lower and upper cases are allowed)\r\nLiteral value should be prefixed with 0x or 0X\r\nEg:\r\n a =0XFACE\r\n a=0XBeef\r\n a =0XBeer\r\n\r\nNote: Being a programmer we can specify literal values in decimal, binary, octal and hexa decimal forms. But PVM will always provide values only in decimal form.\r\na=10\r\nb=0o10\r\nc=0X10\r\nd=0B10\r\nprint(a)10\r\nprint(b)8\r\nprint(c)16\r\nprint(d)2\r\n\r\n', 1, 1),
(9, 'Data Types Base Conversions', '2021-06-15 10:19:49', 'Python provide the following in-built functions for base conversions\r\n\r\n1.bin():\r\nWe can use bin() to convert from any base to binary\r\n\r\nEg:\r\n1) >>> bin(15) \r\n2) \'0b1111\' \r\n3) >>> bin(0o11) \r\n4) \'0b1001\' \r\n5) >>> bin(0X10) \r\n6) \'0b10000\'\r\n\r\n2. oct():\r\nWe can use oct() to convert from any base to octal\r\n\r\nEg:\r\n1) >>> oct(10) \r\n2) \'0o12\' \r\n3) >>> oct(0B1111) \r\n4) \'0o17\' \r\n5) >>> oct(0X123) \r\n6) \'0o443\' \r\n\r\n3. hex():\r\nWe can use hex() to convert from any base to hexa decimal\r\n\r\nEg:\r\n1) >>> hex(100) \r\n2) \'0x64\' \r\n3) >>> hex(0B111111) \r\n4) \'0x3f\' \r\n5) >>> hex(0o12345) \r\n6) \'0x14e5\'\r\n\r\n', 1, 1),
(10, 'Float data type and Complex Data Type', '2021-06-15 10:22:05', '\r\nWe can use float data type to represent floating point values (decimal values)\r\nEg: f=1.234\r\n type(f) float\r\n\r\nWe can also represent floating point values by using exponential form (scientific notation)\r\nEg: f=1.2e3\r\n print(f) 1200.0 \r\n\r\ninstead of \'e\' we can use \'E\'\r\nThe main advantage of exponential form is we can represent big values in less memory.\r\n***Note:\r\n\r\nWe can represent int values in decimal, binary, octal and hexa decimal forms. But we can \r\nrepresent float values only by using decimal form.\r\n\r\nEg:\r\n1) >>> f=0B11.01 \r\n2) File \"<stdin>\", line 1 \r\n3) f=0B11.01\r\n\r\nComplex Data Type:\r\nA complex number is of the form \r\na+bj\r\na and b contain intergers or floating point values\r\n Eg:\r\n 3+5j\r\n 10+5.5j\r\n 0.5+0.1j\r\n\r\nIn the real part if we use int value then we can specify that either by decimal,octal,binary \r\nor hexa decimal form. But imaginary part should be specified only by using decimal form.\r\n\r\n1) >>> a=0B11+5j \r\n2) >>> a \r\n3) (3+5j) \r\n4) >>> a=3+0B11j \r\n\r\n5) SyntaxError: invalid syntax \r\nEven we can perform operations on complex type values.\r\n1) >>> a=10+1.5j \r\n2) >>> b=20+2.5j \r\n3) >>> c=a+b \r\n4) >>> print(c) \r\n5) (30+4j) \r\n6) >>> type(c) \r\n7) <class \'complex\'>\r\n\r\nNote: Complex data type has some inbuilt attributes to retrieve the real part and \r\nimaginary part\r\nc=10.5+3.6j\r\nc.real==>10.5\r\nc.imag==>3.6\r\nWe can use complex type generally in scientific Applications and electrical engineering \r\nApplications.\r\n', 1, 1),
(11, 'Bool data type', '2021-06-16 02:07:44', 'We can use this data type to represent boolean values.\r\n\r\nThe only allowed values for this data type are:\r\n\r\nTrue and False\r\n\r\nInternally Python represents True as 1 and False as 0\r\n\r\nb=True\r\ntype(b) =>bool\r\nEg:\r\na=10\r\nb=20\r\nc=a<b\r\nprint(c)==>True\r\nTrue+True==>2\r\nTrue-False==>1\r\n\r\nstr type:\r\n\r\nstr represents String data type.\r\nA String is a sequence of characters enclosed within single quotes or double quotes.\r\ns1=\'nikhil\'\r\ns1=\"nikhil\"\r\n\r\nBy using single quotes or double quotes we cannot represent multi line string literals.\r\ns1=\"nikhil\r\n         sharma\r\n\r\n\r\nFor this requirement we should go for triple single quotes(\'\'\') or triple double quotes(\"\"\")\r\ns1=\'\'\'nikhil\r\n       sharma\'\'\'\r\n\r\ns1=\"\"\"nikhil\r\n sharma\"\"\"\r\n\r\nWe can also use triple quotes to use single quote or double quote in our String.\r\n\'\'\' This is \" character\'\'\'\r\n\' This i \" Character \'\r\n\r\nWe can embed one string in another string\r\n\'\'\'This \"Python class very helpful\" for java students\'\'\'\r\n', 1, 1),
(12, 'Slicing of Strings', '2021-06-16 04:38:58', 'slice means a piece\r\n\r\n[] operator is called slice operator,which can be used to retrieve parts of String.\r\n\r\nIn Python Strings follows zero based index.\r\n1.The index can be either +ve or -ve.\r\n2.+ve index means forward direction from Left to Right\r\n3.-ve index means backward direction from Right to Left\r\n-6    -5      -4      -3        -2           -1\r\nN    I       K       H         I             L\r\n0      1       2        3         4             5\r\n\r\n\r\n1) >>> s=\"NIKHIL\" \r\n2) >>> s[0] \r\n3) \'N\' \r\n4) >>> s[1] \r\n5) \'I\' \r\n6) >>> s[-1] \r\n7) \'L\' \r\n8) >>> s[40]\r\n IndexError: string index out of range\r\n\r\n1) >>> s[1:40] \r\n2) \'IKHIL\' \r\n3) >>> s[1:] \r\n4) \'IKHIL\' \r\n5) >>> s[:4] \r\n6) \'NIKH\' \r\n7) >>> s[:] \r\n8) \'NIKHIL\' \r\n9) >>> \r\n10) \r\n11) \r\n12) >>> s*3 \r\n13) \'NIKHILNIKHILNIKHIL \r\n14) \r\n15) >>> len(s) \r\n16) 6\r\n\r\n\r\nNote:\r\n1. In Python the following data types are considered as Fundamental Data types\r\n* int \r\n* float\r\n* complex\r\n* bool\r\n* str\r\n\r\n2. In Python,we can represent char values also by using str type and explicitly char type is  not available.\r\nEg:\r\n1) >>> c=\'a\' \r\n2) >>> type(c) \r\n3) <class \'str\'>\r\n\r\n3. long Data Type is available in Python2 but not in Python3. In Python3 long values also \r\nwe can represent by using int type only.\r\n\r\n4. In Python we can present char Value also by using str Type and explicitly char Type is \r\nnot available. ', 1, 1),
(13, 'Type Casting', '2021-06-19 05:00:33', 'We can convert one type value to another type. This conversion is called Typecasting or \r\nType coersion.\r\nThe following are various inbuilt functions for type casting.\r\n1. int()\r\n2. float()\r\n3. complex()\r\n4. bool()\r\n5. str()\r\n\r\n1.int():\r\n\r\nWe can use this function to convert values from other types to int\r\nEg:\r\n1) >>> int(123.987) \r\n2) 123 \r\n3) >>> int(10+5j) \r\n4) TypeError: can\'t convert complex to int \r\n5) >>> int(True) \r\n6) 1 \r\n7) >>> int(False) \r\n8) 0 \r\n9) >>> int(\"10\") \r\n10) 10 \r\n11) >>> int(\"10.5\") \r\n12) ValueError: invalid literal for int() with base 10: \'10.5\' \r\n13) >>> int(\"ten\") \r\n14) ValueError: invalid literal for int() with base 10: \'ten\' \r\n15) >>> int(\"0B1111\") \r\n16) ValueError: invalid literal for int() with base 10: \'0B1111\' \r\n\r\nNote:\r\n\r\n1. We can convert from any type to int except complex type.\r\n2. If we want to convert str type to int type, compulsary str should contain only integral \r\nvalue and should be specified in base-10\r\n\r\n\r\n2. float():\r\n\r\nWe can use float() function to convert other type values to float type.\r\n1) >>> float(10) \r\n2) 10.0 \r\n3) >>> float(10+5j) \r\n4) TypeError: can\'t convert complex to float \r\n5) >>> float(True) \r\n6) 1.0 \r\n7) >>> float(False) \r\n8) 0.0 \r\n9) >>> float(\"10\") \r\n10) 10.0 \r\n11) >>> float(\"10.5\") \r\n12) 10.5 \r\n13) >>> float(\"ten\") \r\n14) ValueError: could not convert string to float: \'ten\' \r\n15) >>> float(\"0B1111\") \r\n16) ValueError: could not convert string to float: \'0B1111\' \r\n\r\nNote:\r\n\r\n1. We can convert any type value to float type except complex type.\r\n2. Whenever we are trying to convert str type to float type compulsary str should be \r\neither integral or floating point literal and should be specified only in base-10. \r\n\r\n3.complex():\r\n\r\nWe can use complex() function to convert other types to complex type.\r\nForm-1: complex(x)\r\nWe can use this function to convert x into complex number with real part x and imaginary \r\npart 0.\r\nEg: \r\n1) complex(10)==>10+0j \r\n2) complex(10.5)===>10.5+0j \r\n3) complex(True)==>1+0j \r\n4) complex(False)==>0j \r\n5) complex(\"10\")==>10+0j \r\n6) complex(\"10.5\")==>10.5+0j \r\n7) complex(\"ten\") \r\n8) ValueError: complex() arg is a malformed string \r\n\r\nForm-2: complex(x,y)\r\n\r\nWe can use this method to convert x and y into complex number such that x will be real \r\npart and y will be imaginary part.\r\nEg: complex(10,-2)==>10-2j\r\n complex(True,False)==>1+0j\r\n\r\n4. bool():\r\n\r\nWe can use this function to convert other type values to bool type.\r\nEg: \r\n1) bool(0)==>False \r\n2) bool(1)==>True \r\n3) bool(10)===>True \r\n4) bool(10.5)===>True \r\n5) bool(0.178)==>True \r\n6) bool(0.0)==>False \r\n7) bool(10-2j)==>True \r\n8) bool(0+1.5j)==>True \r\n9) bool(0+0j)==>False \r\n10) bool(\"True\")==>True \r\n11) bool(\"False\")==>True \r\n12) bool(\"\")==>False \r\n\r\n5. str():\r\nWe can use this method to convert other type values to str type\r\nEg:\r\n1) >>> str(10) \r\n2) \'10\' \r\n3) >>> str(10.5) \r\n4) \'10.5\' \r\n5) >>> str(10+5j) \r\n6) \'(10+5j)\' \r\n7) >>> str(True) \r\n8) \'True\'\r\n\r\n', 1, 1),
(19, 'What is data Structure?', '2021-09-18 09:02:04', 'A data structure is a particular way of organizing data in a computer so that it can be used effectively.', 1, 2),
(20, 'What is Django?', '2021-09-18 09:04:00', 'Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.', 1, 3),
(21, 'Find Second largest element in an array', '2021-09-18 17:14:29', 'def print2largest(arr,arr_size):\r\n  # There should be\r\n  # atleast two elements\r\n  if (arr_size < 2):  \r\n    print(\" Invalid Input \")\r\n    return\r\n  # Sort the array\r\n  arr.sort\r\n\r\n  # Start from second last\r\n  # element as the largest\r\n  # element is at last\r\n  for i in range(arr_size-2, -1, -1):\r\n    if (arr[i] != arr[arr_size - 1]) :\r\n      print(\"The second largest element is\",\r\n            arr[i])\r\n      return\r\n  print(\"There is no second largest element\")\r\n \r\narr = [12, 35, 1, 10, 34, 1]\r\nn = len(arr)\r\nprint2largest(arr, n)', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `image_file` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `image_file`, `password`) VALUES
(1, 'admin', 'deshiboys0@gmail.com', '4eaccb66f14eec17.png', '$2b$12$E04ocHUrmZ.9E3Bq7Fl22uXpvc3HzIjG8MMkcuBsGSRAz25yyn6oq'),
(2, 'NIKHIL8287', 'sharmanikhil8287@gmail.com', 'default.jpg', '$2b$12$Ien.93Ybfew7/FVx6zif4.b2rLYGNAmWAzO93ZUEgPQKHqHha4KQ6'),
(3, 'Anuj', 'anujgoyal.1995@gmail.com', 'default.jpg', '$2b$12$qMWA5YHeTTBuA2/ff0CoeOg10XzN0294vy1IQ.GY6A5GE4E24R1Qi'),
(4, 'Nishi sharma', 'nishipandit.01@gmail.com', 'default.jpg', '$2b$12$aFfttSckkkJ3ekjAUnbIZOZTHQLWCODv6yM31LoBCkq3B86TfmJKu'),
(5, 'Nikhil Sharma', 'nikhil.sharma@cnaap.io', 'default.jpg', '$2b$12$1mGLwJPo598ERtuysHce1.aQdPALCm/GGlgox0bmloP92QZKLL7YW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_batch`
--
ALTER TABLE `add_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_batch`
--
ALTER TABLE `add_batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
