int calculate() {
  return 6 * 7;
}

/* 
    The int data type represents integer values, which are whole numbers without decimals. Integers can be positive, negative, or zero.
     int data type is commonly used to perform mathematical calculations, count items, represent indices in arrays or lists, and store 
     numeric values that don't require decimal precision.
  */
int myAge = 26;

/* 
    The double data type represents floating-point numbers, which are numbers that can have decimal places.
    It provides more precision than the "int" data type. 
    The "double" data type is used to handle values that require decimal accuracy,
    such as storing measurements, currency values, or any numeric value that needs precise calculations.
   */
double mySalary = 2430.23;

/*
    The String data type represents a sequence of characters, such as letters, digits, and special symbols.
    strings are used to store and manipulate textual data, including names, addresses, sentences, 
    and any other information represented as text. Strings are typically enclosed in double quotes (" ") or single quotes(' ').
  */
String myBio =
    'Mabo Mbebeta is an experienced computer scientist, software developer, data scientist, and researcher. With a strong background in software development, algorithm design, and data analysis, Mabo possesses a diverse skill set that includes expertise in machine learning, artificial intelligence, and statistics. Mabo has demonstrated proficiency in multiple programming languages and frameworks, excelling in problem-solving and collaboration.';
String myPort = "http://portfolio.mabombebta.me";

/*
    List data type is used to store an ordered collection of elements. It allows you to store multiple values of any type (e.g., integers, strings, objects) in a specific order. 
    Lists are versatile data structures and provide methods to add, remove, update, or access elements based on their index or value.
   */

List myBasket = [10, "John", "Mary", 11.89, 15, 19.64, 'James', true];

//Accessing element based on index

var isMarried = myBasket[7];

/*
    The "Map" data type represents a collection of key-value pairs. It allows you to associate a value with a unique key, enabling efficient lookup and retrieval of values based on their corresponding keys.
    Maps are commonly used for tasks like storing dictionaries, database records, or any scenario where you need to quickly access values based on specific identifiers.
  */

Map<String, int> chemResults = {
  "Alice": 90,
  "Bob": 85,
  "Charlie": 95,
  "David": 80,
  "Emily": 92,
  "Frank": 78,
  "Grace": 88,
  "Henry": 83,
  "Isabella": 91,
  "Jack": 86,
  "Kate": 94,
  "Liam": 82,
  "Mia": 89,
  "Noah": 84,
  "Olivia": 93,
  "Patrick": 79,
  "Quinn": 87,
  "Ryan": 81,
  "Sophia": 96,
  "Thomas": 77
};
