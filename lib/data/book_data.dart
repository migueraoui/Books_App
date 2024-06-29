import 'package:sortingandsearchingalgorithm/classes/book.dart';

List<Book> bookData = [
  Book(
    idBook: 1,
    nameBook: "Clean Code",
    dateReleased: "2008",
    writerBook: "Robert C. Martin",
    keywords: [
      "Clean Code",
      "Software Development",
      "Best Practices",
      "Agile",
      "Refactoring",
      "Coding Standards",
      "Programming"
    ],
    description:
        "Clean Code embodies a set of principles and practices aimed at producing software that is not only functional but also easy to understand, maintain, and enhance. At its core, Clean Code prioritizes readability, achieved through clear and meaningful naming, structured and organized code, and adherence to consistent style guidelines. Simplicity is another hallmark, favoring straightforward solutions over convoluted ones. By keeping functions and classes focused and small, adhering to the Single Responsibility Principle, Clean Code promotes modular, reusable components that are easy to test and maintain. Clarity is essential, ensuring that code communicates its intent clearly without ambiguity. Minimizing dependencies and handling errors effectively contribute to robustness and maintainability.",
  ),
  Book(
    idBook: 2,
    nameBook: "Code Complete",
    dateReleased: "2004",
    writerBook: "Steve McConnell",
    keywords: [
      "Code Complete",
      "Software Construction",
      "Best Practices",
      "Programming",
      "Quality Assurance",
      "Development",
      "Software Engineering"
    ],
    description:
        "Code Complete, authored by Steve McConnell, is a comprehensive and influential guidebook in software construction. Covering the entire software development lifecycle from inception to maintenance, the book offers practical insights and best practices accumulated from McConnell's deep experience and software engineering research. It emphasizes not just coding but the broader aspects of software development, including requirements gathering, design principles, coding techniques, testing strategies, debugging methods, deployment considerations, and long-term maintenance. McConnell focuses on fostering code quality through readability, maintainability, efficiency, and adherence to best practices, aiming to minimize defects and manage complexity effectively. Known for its depth, detail, and timeless relevance, Code Complete remains a fundamental resource for developers aspiring to enhance their coding skills and build robust, high-quality software systems.",
  ),
  Book(
    idBook: 3,
    nameBook: "Refactoring",
    dateReleased: "1999",
    writerBook: "Martin Fowler",
    keywords: [
      "Refactoring",
      "Code Improvement",
      "Software Design",
      "Programming",
      "Patterns",
      "Clean Code",
      "Software Maintenance"
    ],
    description:
        "Refactoring, as articulated in Martin Fowler's seminal work Refactoring: Improving the Design of Existing Code, is a systematic process of restructuring code to enhance its internal structure and maintainability without altering its external behavior. This practice addresses the inevitable evolution of software systems by systematically applying specific techniques such as extracting methods, classes, or modules to improve clarity and reduce duplication. By renaming variables and methods more descriptively and rearranging code to be more logically structured, refactoring aims to eliminate code smells and make the codebase easier to understand, modify, and extend. It is an essential practice in modern software development, promoting continuous improvement and ensuring that the code remains adaptable to changing requirements over time while minimizing the introduction of defects.",
  ),
  Book(
    idBook: 4,
    nameBook: "Introduction to Algorithms",
    dateReleased: "2009",
    writerBook: "Thomas H. Cormen",
    keywords: [
      "Algorithms",
      "Data Structures",
      "Computer Science",
      "Algorithm Analysis",
      "Problem Solving",
      "Programming",
      "Complexity",
      "quicksort",
      "mergesort"
    ],
    description:
        "Introduction to Algorithms, commonly referred to as CLRS (named after its authors Cormen, Leiserson, Rivest, and Stein), is a definitive textbook in the field of computer science and algorithms. It comprehensively covers the principles, techniques, and applications of algorithms and data structures. The book begins with foundational concepts such as algorithm analysis, asymptotic notation, and basic data structures like arrays, linked lists, and trees. It progresses to more advanced topics including sorting algorithms (quicksort, mergesort), searching algorithms (binary search, hash tables), graph algorithms (shortest paths, spanning trees), dynamic programming, and NP-completeness. Each topic is explored with clear explanations, pseudocode implementations, and rigorous mathematical analysis, making it suitable for both students and professionals in computer science. Introduction to Algorithms is widely recognized for its depth of coverage, clarity of presentation, and practical insights into designing efficient algorithms, making it an indispensable resource in algorithm education and research.",
  ),
  Book(
    idBook: 5,
    nameBook: "Game Programming Patterns",
    dateReleased: "2014",
    writerBook: "Robert Nystrom",
    keywords: [
      "Coding Games",
      "Game Development",
      "Programming",
      "Puzzles",
      "Interactive Learning",
      "Game Design",
      "Software Engineering",
      "Patterns",
      "Problem",
      "design"
    ],
    description:
        "Coding games are interactive platforms designed to teach programming skills through gameplay. These games offer hands-on learning where players solve puzzles and challenges by writing code. They cover programming languages, algorithms, and data structures, starting with simple tasks and progressing to more complex problems. Coding games provide instant feedback on code execution, fostering a deeper understanding of programming concepts. They often include social features like leaderboards and forums, encouraging community interaction and competition among learners. Popular examples include platforms like CodeCombat and Codingame, making learning to code engaging and accessible through interactive and enjoyable experiences.",
  ),
  Book(
    idBook: 6,
    nameBook: "The Algorithm Design Manual",
    dateReleased: "2011",
    writerBook: "Steven S. Skiena",
    keywords: [
      "Advanced Algorithms",
      "Computer Science",
      "Algorithm Design",
      "Data Structures",
      "Complexity Theory",
      "Problem Solving",
      "Algorithmic Techniques"
    ],
    description:
        "Advanced Algorithms by Steven S. Skiena is a comprehensive textbook that delves into sophisticated algorithmic techniques and their applications. It covers advanced topics such as computational geometry, string matching, network flows, and combinatorial algorithms. Skiena's book provides detailed explanations, practical examples, and mathematical analyses of these algorithms, catering to both students and professionals in computer science. Known for its clarity and depth, Advanced Algorithms is a valuable resource for understanding complex algorithms and their implementations in various computational problems.",
  ),
  Book(
    idBook: 7,
    nameBook: "Programming Pearls",
    dateReleased: "2000",
    writerBook: "Jon Bentley",
    keywords: [
      "Programming Pearls",
      "Coding",
      "Programming Techniques",
      "Problem Solving",
      "Software Engineering",
      "Algorithms",
      "Data Structures"
    ],
    description:
        "Programming Pearls by Jon Bentley is a classic book that explores timeless principles and techniques in software development through a series of engaging essays. Each chapter presents practical programming problems and discusses elegant solutions, emphasizing efficiency, clarity, and maintainability. Bentley draws on his experiences at Bell Labs to illustrate strategies for algorithm design, optimization, and debugging.",
  ),
  Book(
    idBook: 8,
    nameBook: "The Pragmatic Programmer",
    dateReleased: "1999",
    writerBook: "Andrew Hunt",
    keywords: [
      "Pragmatic Programmer",
      "Software Development",
      "Coding Practices",
      "Programming",
      "Best Practices",
      "Professional Development",
      "Software Engineering"
    ],
    description:
        "The Pragmatic Programmer by Andrew Hunt and David Thomas is a seminal book that offers practical advice and timeless principles for software developers striving to become more effective and efficient in their craft. Known for its pragmatic approach, the book covers a wide range of topics including software development best practices, project management strategies, coding techniques, debugging, testing, and career management tips. It emphasizes the importance of continuous learning, automation, and clear communication in software development teams. The authors provide concrete examples and anecdotes to illustrate their principles, making the book accessible and engaging for both beginners and seasoned professionals. ",
  ),
  Book(
    idBook: 9,
    nameBook: "Coder at Work",
    dateReleased: "2009",
    writerBook: "Peter Seibel",
    keywords: [
      "Coder at Work",
      "Software Development",
      "Interviews",
      "Programming",
      "Software Engineering",
      "Professional Insights",
      "Developer Stories"
    ],
    description:
        "Coders at Work is a book by Peter Seibel that features interviews with fifteen prominent programmers and computer scientists, offering insights into their careers, experiences, and perspectives on software development. Through candid conversations, the book explores topics ranging from programming languages and techniques to software design principles and the evolution of computing technology. Each interview provides a unique glimpse into the minds of influential figures such as Donald Knuth, Ken Thompson, and Jamie Zawinski, discussing their approaches to problem-solving, their influences, and the challenges they've faced in their careers. ",
  ),
  Book(
    idBook: 10,
    nameBook: "Test-Driven Development by Example",
    dateReleased: "2003",
    writerBook: "Kent Beck",
    keywords: [
      "Test-Driven Development",
      "Programming",
      "Agile",
      "Software Development",
      "Unit Testing",
      "Refactoring",
      "TDD"
    ],
    description:
        "Test-Driven Development by Example by Kent Beck is a seminal book that introduces the practice of Test-Driven Development (TDD) through practical examples and techniques. Beck's approach advocates writing automated tests before writing code, guiding developers to clarify requirements and design through the act of writing tests. The book illustrates the TDD process using a series of case studies, demonstrating how to iteratively build and refactor code while ensuring it meets specified tests. By focusing on writing small, testable units of code, developers learn to improve code quality, maintainability, and design",
  ),
  Book(
    idBook: 11,
    nameBook: "The Complete Software",
    dateReleased: "2017",
    writerBook: "Max Kanat-Alexander",
    keywords: [
      "Complete Software",
      "Software Engineering",
      "Development Practices",
      "Programming",
      "Quality Assurance",
      "Best Practices",
      "Project Management"
    ],
    description: "A comprehensive approach to software engineering.",
  ),
  Book(
    idBook: 12,
    nameBook: "JavaScript: The Definitive Guide",
    dateReleased: "2020",
    writerBook: "David Flanagan",
    keywords: [
      "JavaScript",
      "Web Development",
      "Programming",
      "JavaScript Language",
      "Frontend Development",
      "Client-Side Scripting",
      "Web Design"
    ],
    description: "The definitive guide to JavaScript programming.",
  ),
  Book(
    idBook: 13,
    nameBook: "System Design Interview",
    dateReleased: "2020",
    writerBook: "Alex Xu",
    keywords: [
      "System Design",
      "Interview Preparation",
      "Software Engineering",
      "Architecture",
      "Design Patterns",
      "Scalability",
      "Distributed Systems"
    ],
    description:
        "Prepare for system design interviews with this comprehensive guide.",
  ),
  Book(
    idBook: 14,
    nameBook: "The Art of Game Design",
    dateReleased: "2008",
    writerBook: "Jesse Schell",
    keywords: [
      "Game Design",
      "Game Development",
      "Interactive Design",
      "Creative Process",
      "Game Theory",
      "Artificial Intelligence",
      "Entertainment"
    ],
    description: "Learn the art and science of game design.",
  ),
  Book(
    idBook: 15,
    nameBook: "A Philosophy of Software Design",
    dateReleased: "2018",
    writerBook: "John Ousterhout",
    keywords: [
      "Software Design",
      "Programming Principles",
      "System Design",
      "Engineering",
      "Design Patterns",
      "Software Architecture",
      "Coding"
    ],
    description: "Philosophical insights into software design principles.",
  ),
  Book(
    idBook: 16,
    nameBook: "JavaScript for Kids",
    dateReleased: "2014",
    writerBook: "Nick Morgan",
    keywords: [
      "JavaScript",
      "Programming for Kids",
      "Web Development",
      "Learning",
      "Coding",
      "Interactive",
      "Education"
    ],
    description:
        "Teach JavaScript to children with fun and engaging exercises.",
  ),
  Book(
    idBook: 17,
    nameBook: "JavaScript: The Good Parts",
    dateReleased: "2008",
    writerBook: "Douglas Crockford",
    keywords: [
      "JavaScript",
      "Programming",
      "Best Practices",
      "Web Development",
      "Code Quality",
      "Functional Programming",
      "Software Development"
    ],
    description:
        "Focuses on the good parts of JavaScript for effective programming.",
  ),
  Book(
    idBook: 18,
    nameBook: "Computer Networking: A Top-Down Approach",
    dateReleased: "2016",
    writerBook: "James F. Kurose",
    keywords: [
      "Computer Networking",
      "Networking",
      "Internet",
      "Protocols",
      "Network Security",
      "Data Communications",
      "Network Management"
    ],
    description: "A top-down approach to understanding computer networking.",
  ),
  Book(
    idBook: 19,
    nameBook: "Network Warrior",
    dateReleased: "2011",
    writerBook: "Gary A. Donahue",
    keywords: [
      "Network Warrior",
      "Networking",
      "Network Administration",
      "Cisco",
      "Network Security",
      "Routing",
      "Switching"
    ],
    description: "Real-world strategies for network administrators.",
  ),
  Book(
    idBook: 20,
    nameBook: "TCP/IP Illustrated, Volume 1",
    dateReleased: "2011",
    writerBook: "Kevin R. Fall",
    keywords: [
      "TCP/IP",
      "Networking",
      "Internet Protocols",
      "Computer Networks",
      "Network Programming",
      "Data Communication",
      "Network Architecture"
    ],
    description: "Illustrates the TCP/IP protocols with clear explanations.",
  ),
  Book(
    idBook: 21,
    nameBook: "Internetworking with TCP/IP Volume One",
    dateReleased: "2013",
    writerBook: "Douglas E. Comer",
    keywords: [
      "Internetworking",
      "TCP/IP",
      "Networking",
      "Computer Science",
      "Network Design",
      "Internet Protocols",
      "Network Infrastructure"
    ],
    description: "Explains the principles and practice of internetworking.",
  ),
  Book(
    idBook: 22,
    nameBook: "Network Programming with Go",
    dateReleased: "2020",
    writerBook: "Jan Newmarch",
    keywords: [
      "Network Programming",
      "Go Programming",
      "Networking",
      "Software Development",
      "Concurrent Programming",
      "Distributed Systems",
      "Web Services"
    ],
    description: "Learn network programming with the Go programming language.",
  ),
  Book(
    idBook: 23,
    nameBook: "Artificial Intelligence: A Modern Approach",
    dateReleased: "2020",
    writerBook: "Stuart Russell",
    keywords: [
      "Artificial Intelligence",
      "AI",
      "Machine Learning",
      "Computer Science",
      "Robotics",
      "Natural Language Processing",
      "Intelligent Systems"
    ],
    description:
        "Artificial Intelligence: A Modern Approach is a comprehensive and widely-used textbook that provides a thorough introduction to the principles and techniques of artificial intelligence (AI). Written by Stuart Russell and Peter Norvig, this book covers a broad range of topics in AI, including problem-solving, knowledge representation, machine learning, natural language processing, and robotics. The book is known for its clear explanations and in-depth coverage of both classical AI methods and more recent advancements. It balances theory with practical applications, making it suitable for both students and professionals in the field. The authors emphasize the importance of understanding the underlying principles of AI, rather than focusing solely on specific algorithms or tools.",
  ),
  Book(
    idBook: 24,
    nameBook: "Deep Learning",
    dateReleased: "2016",
    writerBook: "Ian Goodfellow",
    keywords: [
      "Deep Learning",
      "Neural Networks",
      "Machine Learning",
      "Artificial Intelligence",
      "Data Science",
      "Pattern Recognition",
      "Computer Vision"
    ],
    description:
        "Covers the mathematical and computational principles of deep learning.",
  ),
  Book(
    idBook: 25,
    nameBook: "Machine Learning Yearning",
    dateReleased: "2018",
    writerBook: "Andrew Ng",
    keywords: [
      "Machine Learning",
      "AI",
      "Data Science",
      "Programming",
      "Artificial Intelligence",
      "Algorithms",
      "Deep Learning"
    ],
    description: "Practical guide to machine learning project management.",
  ),
  Book(
    idBook: 26,
    nameBook: "Pattern Recognition and Machine Learning",
    dateReleased: "2006",
    writerBook: "Christopher M. Bishop",
    keywords: [
      "Pattern Recognition",
      "Machine Learning",
      "Data Mining",
      "Computer Vision",
      "Statistical Learning",
      "Algorithms",
      "Artificial Intelligence"
    ],
    description:
        "A textbook on pattern recognition and machine learning algorithms.",
  ),
  Book(
    idBook: 27,
    nameBook: "Superintelligence: Paths, Dangers, Strategies",
    dateReleased: "2014",
    writerBook: "Nick Bostrom",
    keywords: [
      "Superintelligence",
      "Artificial Intelligence",
      "Ethics",
      "Philosophy",
      "Future Studies",
      "Technology",
      "Existential Risks"
    ],
    description:
        "Explores the potential outcomes of developing superintelligent machines.",
  ),
  Book(
    idBook: 28,
    nameBook: "The Mythical Man-Month",
    dateReleased: "1975",
    writerBook: "Frederick P. Brooks Jr.",
    keywords: [
      "Mythical Man-Month",
      "Software Engineering",
      "Project Management",
      "Programming",
      "Development Process",
      "Productivity",
      "Team Dynamics"
    ],
    description: "Essays on software engineering and project management.",
  ),
  Book(
    idBook: 29,
    nameBook: "The C Programming Language",
    dateReleased: "1978",
    writerBook: "Brian W. Kernighan, Dennis M. Ritchie",
    keywords: [
      "C Programming",
      "Programming Language",
      "Software Development",
      "System Programming",
      "Embedded Systems",
      "Algorithm Implementation",
      "Unix"
    ],
    description: "The definitive guide to the C programming language.",
  ),
  Book(
    idBook: 30,
    nameBook: "Structured Programming",
    dateReleased: "1972",
    writerBook: "Ole-Johan Dahl, Edsger W. Dijkstra, C.A.R. Hoare",
    keywords: [
      "Structured Programming",
      "Programming Paradigm",
      "Algorithm Design",
      "Software Engineering",
      "Code Structuring",
      "Modularity",
      "Control Structures"
    ],
    description: "Principles of structured programming.",
  ),
  Book(
    idBook: 31,
    nameBook: "Algorithms + Data Structures = Programs",
    dateReleased: "1976",
    writerBook: "Niklaus Wirth",
    keywords: [
      "Algorithms",
      "Data Structures",
      "Programming",
      "Software Engineering",
      "Algorithm Design",
      "Pascal Programming",
      "Computational Complexity"
    ],
    description: "Fundamentals of algorithms and data structures.",
  ),
  Book(
    idBook: 32,
    nameBook: "Design Patterns: Elements of Reusable Object-Oriented Software",
    dateReleased: "1979",
    writerBook: "Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides",
    keywords: [
      "Design Patterns",
      "Software Design",
      "Object-Oriented Programming",
      "Programming",
      "Reusable Code",
      "Design Principles",
      "Software Engineering"
    ],
    description: "Classic work on design patterns in object-oriented software.",
  ),
];
