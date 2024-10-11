Here's a `README.md` file that explains how to set up and run the Spring Boot application locally using Maven:


# Person Data JSON to Excel Converter

This Spring Boot application reads multiple JSON files containing person data from a directory, processes the data, and generates an Excel file with the formatted output. It uses Apache POI to create the Excel file and Jackson for parsing the JSON files.

## Features
- Reads JSON files from a specified directory.
- Converts JSON data to Java objects.
- Writes the data into an Excel file (`.xlsx` format) with proper formatting.

## Prerequisites

Make sure you have the following installed on your machine:

- **Java 17** or higher
- **Maven 3.6.0** or higher
- **Spring Boot 2.6.x** or higher
- **Git** (optional, to clone the repository)
  
## Technologies Used
- **Spring Boot** (Backend framework)
- **Apache POI** (For generating Excel files)
- **Jackson** (For parsing JSON)
  
## Steps to Run Locally

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-repo/spring-boot-json-excel.git
   cd spring-boot-json-excel
   ```


2. **Configure the JSON Folder**

   Ensure that your JSON files are placed inside the folder:  
   `src/main/resources/json/`

   Each JSON file should follow this structure:

   ```json
   {
     "id": 1,
     "name": "Sanket",
     "age": 22,
     "gender": "male",
     "company": "CRIF",
     "address": "Pune"
   }
   ```


3. **Build the Project with Maven**

   Open a terminal and navigate to the project root directory. Then, use the following command to build the project:

   ```bash
   mvn clean install
   ```

4. **Run the Application**

   Once the build is successful, you can run the application using the following command:

   ```bash
   mvn spring-boot:run
   ```

   The application will start and generate an Excel file containing the person data from the JSON files.

5. **Output**

   The Excel file will be generated at the following location:

   ```plaintext
   src/main/resources/output/person_data.xlsx
   ```

6. **Customizing the JSON Folder or Output Path**

   If you want to customize the folder for the JSON files or the path of the generated Excel file, you can modify these constants in the `PersonService` class:

   ```java
   private static final String JSON_FOLDER = "src/main/resources/json/";
   private static final String EXCEL_FILE_PATH = "src/main/resources/output/person_data.xlsx";
   ```

## Running Tests

If you want to run the tests (if any are available), you can execute the following Maven command:

```bash
mvn test
```

## Additional Notes

- Make sure that the `src/main/resources/json/` folder contains valid JSON files. Invalid files will cause the application to throw exceptions during processing.
- You can update the JSON and Excel file paths according to your project structure if needed.
- This project uses **Apache POI** for Excel generation and **Jackson** for JSON parsing.

## Dependencies

Make sure the following dependencies are in your `pom.xml`:

```xml
<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    <dependency>
        <groupId>com.fasterxml.jackson.core</groupId>
        <artifactId>jackson-databind</artifactId>
    </dependency>
    <dependency>
        <groupId>org.apache.poi</groupId>
        <artifactId>poi-ooxml</artifactId>
        <version>5.0.0</version>
    </dependency>
</dependencies>
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

### Key Points:
- The `README.md` provides detailed instructions on how to clone, build, and run the application.
- It covers the prerequisites, the Maven build process, and how to execute the Spring Boot application.
- The guide includes instructions for customizing the JSON folder and output paths.
