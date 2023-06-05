# Flutter Roadmap

## 1. Environment Setup

- [x] [Flutter setup](#flutter-setup)
- [x] [VS Code Setup](#vs-code-setup)
- [x] [Git](#git)
  - [Commit Message Structure](#commit-message-structure)
  - [Pre Commit Hook](#pre-commit-hook)
- [x] [Fvm](#fvm)

## 2. Networking

- [x] [Dio](#dio)
- [x] [Freezed](#freezed)
- [x] [Retrofit](#retrofit)()
- [x] [File Upload/Download](#file-upload)

## 3. State Management

- [ ] [Riverpod](#riverpod)

## 4. DI

- [ ] [Inherited Widget](#inherited-widget)
- [ ] [Get_it](#get_it)
- [ ] [Injectable](#injectable)

## 5. UI

- [ ] [Pagination](#pagination)
- [ ] [Custom Paint](#custom-paint)
- [ ] [Clip Path](#clip-path)

## 6. Firebase

- [ ] [Crashlytics](#crashlytics)
- [ ] [Firebase Remote Config](#firebase-remote-config)
- [ ] [Local Notification](#local-notification)
- [ ] [FCM (Firebase Cloud Messaging)](#fcm)

## 7. Routing

- [ ] [AutoRoute](#autoroute)

## 8. Storage

- [ ] [Secured Shared Preference](#secured-shared-preference)
<!-- - [ ] drift

## 9. Testing

- [ ] Unit Testing
- [ ] Widget Testing -->

---

### Flutter setup

### Windows

1. **Download Flutter**: Visit the Flutter SDK download page (<https://flutter.dev/docs/get-started/install/windows>) and download the Flutter SDK for Windows.

2. **Extract the Flutter SDK**: Once the download is complete, extract the downloaded file to a location on your computer. For example, you can extract it to `C:\flutter`.

3. **Set up Environment Variables**:

   - Add Flutter to PATH: Open the Environment Variables settings on your computer and add the Flutter SDK path to the `Path` variable. For example, add `C:\flutter\bin` to the `Path` variable.
   - Apply the changes and close the settings.

4. **Check Flutter Installation**: Open a new command prompt and run the following command to verify the Flutter installation:

   ```dart
   flutter doctor
   ```

5. **Install Flutter dependencies**: If the `flutter doctor` command identifies any missing dependencies, follow the instructions provided to install them.

### macOS

1. **Download Flutter**: Visit the Flutter SDK download page (<https://flutter.dev/docs/get-started/install/macos>) and download the Flutter SDK for macOS.

2. **Extract the Flutter SDK**: Once the download is complete, open the Terminal and navigate to the directory where the Flutter SDK file was downloaded. Extract the file by running the following command:

   ```terminal
   tar xf flutter_macos_<version>.tar.xz
   ```

3. **Move Flutter to a Preferred Location**: Move the extracted Flutter folder to a desired location on your machine. For example, you can move it to `/usr/local/flutter` or your user directory.

4. **Set up Environment Variables**:

   - Add Flutter to PATH: Open the Terminal and run the following command to open the shell configuration file:

     ```terminal
     open ~/.zshrc
     ```

     (Replace `.zshrc` with `.bashrc` if you are using Bash.)

   - Add the following line at the end of the file:

     ```terminal
     export PATH="$PATH:/path/to/flutter/bin"
     ```

     Replace `/path/to/flutter` with the path to the Flutter SDK directory.

   - Save and close the file.
   - Run the following command to apply the changes:

     ```flutter
     source ~/.zshrc
     ```

     (Again, replace `.zshrc` with `.bashrc` if you are using Bash.)

5. **Check Flutter Installation**: Open a new Terminal window and run the following command to verify the Flutter installation:

   ```flutter
   flutter doctor
   ```

6. **Install Flutter dependencies**: If the `flutter doctor` command identifies any missing dependencies, follow the instructions provided to install them.

These are the basic steps to set up Flutter on both Windows and macOS. Make sure to follow any additional instructions or requirements mentioned in the official Flutter documentation for your specific operating system.

Here are the recommended extensions and settings for setting up VS Code for Flutter development:

---

## VS Code Setup

### Extensions

1. [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter): This extension provides tools for creating and managing Flutter projects within VS Code.

2. [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph): This extension visualizes the Git structure in a graphical way, making it easier to understand commits, branches, and more.

3. [IntelliJ IDEA Keybindings](https://marketplace.visualstudio.com/items?itemName=k--kato.intellij-idea-keybindings): This extension provides code completion and other IntelliJ IDEA keybindings to enhance the development experience.

4. [Flutter Riverpod Snippets](https://marketplace.visualstudio.com/items?itemName=Ray-Luo.flutter-riverpod-snippets): This extension offers shortcut code snippets for creating Riverpod extended classes and providers, saving time during development.

5. [Version Lens](https://marketplace.visualstudio.com/items?itemName=pflannery.vscode-versionlens): This extension displays version information of used dependencies in the `pubspec.yaml` file, making it easier to upgrade or change package versions.

6. (Optional) [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme): This extension allows you to change file and folder icons for better visual aid.

### VS Code Settings

To enable file nesting and keep the file explorer organized, add the following settings to your `settings.json` file:

```json
"explorer.fileNesting.enabled": true,
"explorer.fileNesting.patterns": {
    "*.dart": "${capture}.g.dart,${capture}.freezed.dart,${capture}.gr.dart"
}
```

These settings enable nesting for certain files generated by tools like Riverpod and Freezed, improving the structure and cleanliness of the file explorer.

By installing these extensions and configuring the recommended settings, you can enhance your Flutter development experience within VS Code.

---

## Git

Git is a distributed version control system that allows you to efficiently track changes in your source code, collaborate with others, and manage your development projects.

Install Git by downloading the installation package for your operating system from the official website: [Git Downloads](https://git-scm.com/downloads).

### Commit Message Structure

The commit message should follow the format: `<type>: <description>`

- `<type>`: This represents the type of the commit and should be one of the following:

  - `feat`: A new feature or functionality added.
  - `fix`: A bug fix.
  - `docs`: Documentation-related changes (e.g., adding or updating documentation).
  - `chore`: Other changes that don't affect the code (e.g., build configuration changes, tooling updates).
  - `test`: Adding or modifying tests.
  - `style`: Code style-related changes (e.g., formatting, indentation).
  - `refactor`: Code refactoring or restructuring without changing its behavior.

- `<description>`: This provides a concise and descriptive summary of the changes made in the commit.

Here are some examples of commit messages using different types:

- `feat: Add user registration feature`
- `fix: Fix null pointer exception in login process`
- `docs: Update README with installation instructions`
- `chore: Update build configuration for production deployment`
- `test: Add unit tests for authentication module`
- `style: Format code according to coding guidelines`
- `refactor: Extract common utility functions`

Remember to replace `<description>` with a brief, descriptive summary of the actual changes made in the commit.

By enforcing a consistent commit message convention and format, it becomes easier to understand the purpose and impact of each commit, making it beneficial for collaboration and project management.

### Pre Commit Hook

To enforce a consistent commit message structure, you can set up a pre-commit hook in your Git repository.

To set up the pre-commit hook, follow these steps:

1. Create a new file named pre-commit (without any file extension) in the .git/hooks/ directory of your Git repository.

2. Add the following code to the pre-commit file:

   ```bash
   #!/bin/sh

   # Get the commit message from the file
   commit_message_file=$1
   commit_message=$(cat $commit_message_file)

   # Define the regex pattern for the commit message
   regex_pattern="^(feat|fix|docs|chore|test|style|refactor):\s.{1,50}(\n\n.{0,72}\n\n(.|\n)*(\n\n#[0-9]+)*)?$"

   # Check if the commit message matches the pattern
   if ! echo $commit_message | grep -Eq "$regex_pattern"; then
   echo "Invalid commit message structure. Please use the following format:"
   echo "<type>: <description>"
   echo ""
   echo "[optional body]"
   echo ""
   echo "[optional footer]"
   exit 1
   fi
   ```

3. If you are using Windows, open a command prompt and run the following command to grant read and execute permissions to the pre-commit file:

   `icacls .git/hooks/pre-commit /grant Users:RX`

   If you are using macOS or Linux, open a terminal and run the following command to make the pre-commit file executable:

   `chmod +x .git/hooks/pre-commit`

The pre-commit hook is now set up and active. Whenever you attempt to make a commit, the script will automatically check the commit message against the specified regex pattern.

---

## FVM

FVM (Flutter Version Management) is a tool that enables us to manage multiple versions of the Flutter SDK on our local machine. It allows us to easily switch between different SDK versions and test our applications using different Flutter versions on the same machine.

To install FVM, run the following command:

```bash
pub global activate fvm
```

To view the available Flutter releases, use the command:

```bash
fvm releases
```

To install a specific SDK version, use the command:

```bash
fvm install stable
```

or

```bash
fvm install 2.0.3
```

To use a specific Flutter SDK version, use the command:

```bash
fvm use 3.10
```

To configure VS Code for FVM, make the following changes in the "settings.json" file:

1. Open the "settings.json" file by clicking on "Preferences: Open User Settings(JSON)" in VS Code.

2. Add the following lines to specify the path of the FVM installed SDK:

   ```json
   "dart.flutterSdkPaths": [
       ".fvm/flutter_sdk"
   ],
   ```

3. Exclude the FVM directory from search results by adding the following line:

   ```json
   "search.exclude": {
       "**/.fvm": true
   },
   ```

4. Finally, update the Flutter SDK path in VS Code's Languages & Frameworks settings by providing the path to the FVM installed SDK.

By using FVM, you can easily manage and switch between different Flutter SDK versions, allowing you to test your applications with different SDK versions without conflicts.

For more information and documentation, you can visit the [FVM official website](https://fvm.app).

## Networking

Networking in Flutter refers to the process of making HTTP requests to communicate with web services or APIs (Application Programming Interfaces) to fetch or send data. It is an essential aspect of building mobile applications that require data exchange with remote servers.

Flutter provides various libraries and packages that facilitate networking tasks, making it easier to handle network requests and process the received data. Some popular networking packages in Flutter include:

1. `http`: This package provides a set of classes and methods to perform HTTP requests, handle responses, and interact with RESTful APIs.

2. `dio`: Dio is a powerful package that offers more advanced features for making HTTP requests, such as handling request cancellation, intercepting requests and responses, and sending form data.

3. `retrofit`: Retrofit is a type-safe HTTP client generator for Dart. It allows you to define API endpoints as Dart interfaces and automatically generates the necessary code for making HTTP requests.

### Dio

To use Dio in your Flutter project, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  dio: ^4.0.0
```

Then, run `flutter pub get` to fetch the package.

## Getting Started

1. Import the Dio package:

   ```dart
   import 'package:dio/dio.dart';
   ```

2. Create an instance of Dio:

   ```dart
   Dio dio = Dio();
   ```

3. Making a GET request:

   ```dart()
   Response response = await dio.get('https://api.example.com/posts');
   print(response.data);
   ```

4. Making a POST request with JSON payload:

   ```dart
   Map<String, dynamic> payload = {'title': 'New Post', 'body': 'Hello World'};
   Response response = await dio.post('https://api.example.com/posts', data: payload);
   print(response.data);
   ```

For more details, refer to the [official Dio documentation](https://pub.dev/documentation/dio/latest/).

### Freezed

Freezed is a code-generation library for Dart and Flutter that simplifies the process of creating immutable classes from JSON data. It generates necessary boilerplate code for converting JSON data to Dart objects and vice versa, making serialization and deserialization tasks more efficient.

[Ref Link](https://tomicriedel.medium.com/flutter-freezed-the-complete-crashcourse-c942e9aa2428#:~:text=Freezed%20is%20a%20code%2Dgeneration,method%20and%20maybe%20value%20equality.)

### Installation

To use Freezed in your Flutter project, add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  freezed_annotation: ^0.14.2
  json_annotation: ^4.8.1

dev_dependencies:
  build_runner: ^2.0.3
  json_serializable: ^6.6.2
  freezed: ^0.14.2
```

Then, run `flutter pub get` to fetch the packages.

### Getting Started with Freezed

1. Create a new folder named "models" in your project to store all the data models.

2. Create a Dart file for the Freezed implemented class, e.g., `task.dart`.

   - Add the `@freezed` annotation on top of the class declaration.
   - Create a mixin using the class name prefixed with `_$`, e.g., `_$Task`.
   - Inside the class, define a factory constructor with parameters matching the JSON data.

3. Suppose we have the following JSON data:

   ```json
   [
     {
       "title": "Go for a walk",
       "isComplete": false
     },
     {
       "title": "Lunch",
       "isComplete": false
     }
   ]
   ```

4. Define the factory constructor parameters as required or with `@Default('')` for default values.

   - Use `@Default('')` to assign a default value if the JSON data doesn't provide one. You can specify different default values based on the data type: `''` for string, `0` for int, `true` for boolean, etc.

5. After the factory constructor, add the `fromJson` method to convert the JSON data to the class object:

   ```dart
   factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
   ```

6. Add the following lines at the top of the file to reference the generated files by the build_runner:

   ```dart
   part 'task.freezed.dart';
   part 'task.g.dart';
   ```

7. Run the build_runner in the terminal to generate the necessary files:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

### Usage

To use the object from the JSON data, call the `fromJson` method of the Task class and provide the JSON data. It will return an object of the Task class.

```dart
final task = Task.fromJson({
  "title": "Lunch",
  "isComplete": false,
});
print(task.toString());
```

### Changing Object Names from JSON Keys

If you want to change the object names to use camel-case notation or any other custom name, you can use `@JsonKey` to specify the corresponding key name from the JSON data.

For example:

```dart
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'id') required String userId,
    @JsonKey(name: 'user_name') required String name,

 required String emailAddress,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```

This allows you to map the JSON keys to different object property names as needed.

For more details and advanced usage, refer to the [official Freezed documentation](https://pub.dev/packages/freezed).

## Retrofit

Retrofit is a library used in Flutter applications for making API calls. It utilizes Dio for handling the requests and responses. Retrofit provides a code generator that helps reduce the amount of code required to make API calls and simplifies the process of interacting with APIs.

[Ref Link](https://pub.dev/packages/retrofit)

### Retrofit Installation

To use Retrofit in your Flutter project, add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  retrofit: ^2.3.0
  dio: ^4.0.0
  json_annotation: ^4.4.0

dev_dependencies:
  retrofit_generator: ^2.1.0
  build_runner: ^2.1.0

```

Then, run `flutter pub get` to fetch the packages.

### Getting Started with Retrofit

To create API calls using Retrofit, follow these steps:

1. Create a folder named `source` to store all the data coming from remote or local sources.

2. Create an abstract class, let's call it `RestClient`, which will serve as the Retrofit interface. Add a factory constructor that takes an instance of Dio to make the API calls from its implementation class, `_RestClient`.

3. Annotate the `RestClient` class with `@RestApi` and specify the base URL of the API:

   ```dart
   @RestApi(baseUrl: "https://dummyjson.com")
   abstract class RestClient {
     factory RestClient(Dio dio) = _RestClient;
   }
   ```

4. Add the following line at the top of the file to reference the generated file by Retrofit:

   ```dart
   part '<class_file_name>.g.dart';
   ```

   Note: If the file name of your class is `user.dart`, specify `part 'user.g.dart'`.

5. Run the build_runner to generate the necessary files:

   ```bash
   flutter pub run build_runner watch --delete-conflicting-outputs
   ```

6. To create an API request, use annotations with the desired HTTP method and URI. For example, to make a GET request to retrieve a list of users:

   ```dart
   @GET("/users")
   Future<UserListRes> getTasks();
   ```

   The `getTasks()` method will be implemented in the generated implementation class and will handle the API call, returning a list of users.

7. You can create other types of requests using different annotations:

   - `@POST` - Send data from the application to the server/database.
   - `@PUT` - Update data stored in the database/server.
   - `@DELETE` - Delete data stored in the database/server.

   Here's an example of a file making requests to `dummyjson.com` using Retrofit:

   ```dart
   part 'user.g.dart';

   @RestApi(baseUrl: "https://dummyjson.com")
   abstract class RestClient {
     factory RestClient(Dio dio) = _RestClient;

     @GET("/users")
     Future<UserListRes> getTasks();

     @POST("/users/add")
     Future<User> addUser(@Body() User user);

     @PUT("/users/{uid}")
     Future<User> updateUser(@Path("uid") int uid, @Body() User user);

     @DELETE("/users/{uid}")
     Future<User> deleteUser(@Path("uid") int uid);
   }
   ```

### Method Parameters

Retrofit provides different annotations to handle method parameters:

1. `@Body`: Use `@Body` to send Dart objects along with the request. This is commonly used in `@PUT` and `@

   POST` requests. Here's an example:

   ```dart
   @POST("/users/add")
   Future<User> addUser(@Body() User user);
   ```

2. `@Path`: Use `@Path` to specify dynamic URLs at runtime. Here's an example:

   ```dart
   @GET('/users/{id}')
   Future<User> getUser(@Path('id') String userId);
   ```

   This request retrieves user information for a specific user ID. The resulting URL will be `BaseUrl + '/users/2'` for user ID 2.

3. `@Query`: Use `@Query` to specify query parameters in the URL. Here's an example:

   ```dart
   @GET('/users')
   Future<List<User>> getUsers(@Query('page') int page, @Query('limit') int limit);
   ```

   This GET request retrieves user data for a specific page and with a limit. The resulting URL will look like this: `https://abc.com/users?page=2&limit=5`.

Make sure to run the build_runner whenever you make changes to your Retrofit files to regenerate the necessary files.

For more information and advanced usage, refer to the official Retrofit documentation: [Retrofit Package](https://pub.dev/packages/retrofit).

---

Sure! Here's an example of how to handle file upload and download using Retrofit and Dio in Flutter:

Apologies for the confusion earlier. Here's the full documentation for file upload using Retrofit and Dio:

### File Upload

To upload a file using Retrofit and Dio, follow these steps:

1. Define a Retrofit service interface with the necessary API endpoints. Add the `@POST` annotation to the method that handles the file upload, and use the `@Part` annotation to specify the file parameter.

   ```dart
   import 'package:dio/dio.dart';
   import 'package:retrofit/retrofit.dart';

   part 'api_service.g.dart'; // Generated file

   @RestApi(baseUrl: "https://example.com/api")
   abstract class ApiService {
     factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

     @POST("/upload")
     @MultiPart()
     Future<Response> uploadFile(@Part() File file);
   }
   ```

2. Generate the implementation class using the Retrofit code generator by running the following command in your project directory:

   ```bash
   flutter pub run build_runner build
   ```

3. Initialize Dio and create an instance of the Retrofit service:

   ```dart
   import 'package:dio/dio.dart';

   final dio = Dio();
   final apiService = ApiService(dio);
   ```

4. Create a `File` object from the file you want to upload:

   ```dart
   import 'package:dio/dio.dart';

   final file = File('/path/to/file');
   ```

5. Call the API method to upload the file:

   ```dart
   final response = await apiService.uploadFile(file);
   ```

In the above code, make sure to replace `"https://example.com/api"` with the actual base URL of your API. Also, adjust the endpoint and method names according to your API requirements.

By using the `@Multipart()` and `@Part` annotations, Retrofit and Dio handle the file upload process for you.

Handle the response from the server accordingly.

### File Download

1. Import the necessary packages:

   ```dart
   import 'package:dio/dio.dart';
   import 'package:path_provider/path_provider.dart';
   ```

2. Create an instance of Dio:

   ```dart
   final dio = Dio();
   ```

3. Define the file download function:

   ```dart
   Future<void> downloadFile(String url, String savePath) async {
   try {
      final response = await dio.download(url, savePath,
         onReceiveProgress: (received, total) {
         if (total != -1) {
         print('Downloaded ${((received / total) * 100).toStringAsFixed(0)}%');
         }
      });   

      if (response.statusCode == 200) {
         print('File downloaded successfully!');
         print('File saved at: $savePath');
      } else {
         print('File download failed. Status code: ${response.statusCode}');
      }
   } catch (error) {
      print('File download error: $error');
   }
   }
   ```

4. Get the temporary directory for saving the downloaded file:

   ```dart
   final directory = await getTemporaryDirectory();
   final filePath = '${directory.path}/downloaded_file.ext';
   ```

   Replace `downloaded_file.ext` with the desired file name and extension.

5. Call the `downloadFile` function with the file URL and save path:

   ```dart
   await downloadFile('https://example.com/file_url', filePath);
   ```

   Replace `'https://example.com/file_url'` with the actual URL of the file you want to download.

   Make sure to wrap the code in an `async` function or use it within an asynchronous context.

---

## State Management

Sure! Here's the corrected version:

### Riverpod

[Ref Link](https://docs-v2.riverpod.dev/docs/introduction)

Before using Riverpod, it's important to understand what providers are and their use cases.

**Provider**:

- Providers are a great alternative to `setState()`.
- They allow us to separate business logic from the UI.
- The disadvantage of `setState()` is that it rebuilds the entire widget tree even if we only want to update a small part of it, which can impact performance.
- Providers help us manage the state of an object and notify the UI to rebuild whenever the state changes.
- For example, when we click on a Floating Action Button, the Text widget displaying the number should increment by one.

**Disadvantages of Provider**:

1. It can throw a **ProviderNotFoundException** exception.

![ProviderNotFoundException](https://codewithandrea.com/articles/flutter-state-management-riverpod/images/widget-tree-provider-not-found-exception.webp)

In the above image, we can see that the `Database provider` is not accessible to the SignInPage, resulting in an exception.

**Riverpod** is a complete rewrite of the Provider package that introduces improvements that would otherwise be impossible.

- Riverpod ensures compile-time safety since all providers are declared globally and can be accessed from anywhere.
- It helps manage state by storing the state of a class and providing it to widgets, which can then update whenever the data changes.

Dependencies required:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.0.2
dev_dependencies:
  riverpod_lint: ^1.3.2
  riverpod_generator: ^2.2.3
  build_runner: ^2.3.3
  custom_lint: ^0.4.0
```

Steps to implement Riverpod in your project:

**Step 1**: Wrap the Root widget with `ProviderScope`.

- `ProviderScope` is a widget that stores the state of all the providers we create.
- It allows us to access the context of all the providers in the project, making them globally accessible.
- This enables all the widgets to access any provider they need.

```dart
void main() {
  runApp(ProviderScope(
    child: MyApp(),
  ));
}
```

**Step 2**: Creating Providers using Riverpod.

- Providers are structured like functions.
- Specify the return type, e.g., `int`.
- Write the name of the provider, e.g., `increment`.
- The `increment` provider takes an argument of type `<provider-name>Ref ref`.
- Note: The name should start with an uppercase character and end with `Ref`.
- Return the desired data. In the case of a simple counter app, the initial value of the counter will be `0`, so we return `0` in the `increment` provider.
- Finally, annotate the provider with `@riverpod`.

```dart
@riverpod
String increment(IncrementRef ref) {
  return 0;
}
```

**Step 3**: Add the part file name at the top.

- Syntax:

```dart
part "increment_provider.g.dart";
```

**Step 4**: Run the build runner to generate the necessary files.

```bash
flutter pub run build_runner watch -delete-conflicting-outputs
```

**Step 5**: The new file will be automatically generated by the Riverpod generator.

**Step 6**: Using Riverpod providers in widgets.

- **A. Using a ConsumerWidget**:
  - This is an alternative to `StatelessWidget`.
  - It's used when we need a stateless widget and access to the provider's reference throughout the

widget.

- The build method receives a `WidgetRef` object, which allows us to access the content of the provider.

```dart
String user(UserRef ref) {
  return 'user1';
}

class HelloWorldWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorld = ref.watch(userProvider);
    return Text(helloWorld);
  }
}
```

- **B. Using ConsumerStatefulWidget**:
  - This is an alternative to `StatefulWidget`.
  - It's used when we need a stateful widget and access to the provider's reference throughout the widget.

```dart
class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  ref.read(); // using the ref to use the provider's state.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Some text'),
        ),
      ),
    );
  }
}
```

- **C. Using Consumer**:

  - This is used to wrap any widget, allowing the widget to watch the state of the provider.
  - For example, if we have a counter stateless widget and we want the text to listen to the provider's state, we can wrap the text with a consumer.
  - Syntax:

    ```dart
    Consumer(builder: (context, ref, child) {
      final data = ref.watch(increment);
      return Text("${data.counter}");
    }),
    ```

  - The `Consumer` takes three arguments in the builder parameter:
    - `context`: The context of the builder.
    - `ref`: The `WidgetRef` object that allows us to read/watch the state of the provider.
    - `child`: An optional parameter that helps optimize the build process. If we only want to update a single widget in a large widget tree, we can specify that widget as the `child`, so it won't rebuild when the provider's value changes.

**Methods of WidgetRef (ref)**:

- `watch`:
  - Used to get the value of the state and automatically rebuild the UI if the current state changes.
  - Examples:
    - To rebuild the widget when there is a change in the `incrementProvider` state:
      - `ref.watch(incrementProvider);`
    - To call the `setCount` method of the provider and change its state:
      - Assuming the provider has a method called `setCount` that takes an `int` argument, the following line sets the counter value to 2 and updates the UI due to the watch method:
      - `ref.watch(incrementProvider.notifier).setCount(2);`
    - To change the state of a method-type provider:
      - Suppose we have a provider of method type and want to change the counter state:
      - `ref.watch(incrementProvider.notifier).state = 3;`
- `read`:
  - Used to get the current state of the provider without triggering a rebuild of the widget.
  - This is useful for accessing or updating the state of the provider.
  - It's recommended to use `read` when only the state needs to be obtained or updated, although it's not mandatory.
- `listen`:
  - Similar to `watch`, but it's used to subscribe to event-based systems like Streams or notifications.
  - The `listen` method of `WidgetRef` takes three arguments:
    - Provider name
    - A `void Function` that receives the previous and new states as arguments

, allowing us to perform actions based on the two values. - An error function that receives the error value if there's any, enabling us to handle the error.

- Example:

  ```dart
  ref.listen(incrementProvider, (prevState, newState) {
    print('The value has changed.');
  });
  ```

Here's a reference image showing the use cases of all three methods of `WidgetRef`:

![WidgetRef methods](https://github.com/bizz84/flutter-tips-and-tricks/raw/main/tips/0046-riverpod-difference-between-ref-watch-ref-read-ref-listen/046.1-watch-read-listen.png)

**Types of providers** (Note: The names used here are for convenience):

- A. **Method Provider**:

  - This provider allows us to specify any return type and is used when we want to store a simple state of any type.
  - It's used when we don't need to apply business logic to the data of the provider.
  - Examples: Objects, strings, integers, etc.
  - Syntax:

    ```dart
    @riverpod
    Future<TMDBMovie> movie(MovieRef ref, {required int movieId}) {
      return ref.watch(moviesRepositoryProvider).movie(movieId: movieId);
    }
    ```

- B. **Class Provider**:

  - This provider is used when we want the data to be accessible to different widgets and also notify any changes in the data/objects.
  - It creates a class, so we can specify methods associated with the class. This is helpful because our logic remains with the data.
  - In this type of provider, we need to extend the class with `_$<class_name>`. See the sample code for more details.
  - The class should override the `build` method, which returns the desired type according to our requirements (e.g., int, String, Future, object type, etc.).
  - We can specify additional methods as needed.
  - Syntax:

    ```dart
    @riverpod
    class IdxState extends _$IdxState {
      @override
      int build() {
        return 0;
      }

      void changePage(int data) {
        state = data;
      }
    }
    ```

---

## Dependency Injection [(Link)](https://www.filledstacks.com/post/flutter-dependency-injection-a-beginners-guide/) [(Youtube)](https://youtu.be/vBT-FhgMaWM)

- Dependency Injection is a design pattern in development that aims to achieve loose coupling between the classes used in a project.
- Consider the following example:

```dart
class LoginService {
  Api api = new Api();
}
```

- In the above example, the class `LoginService` is dependent on the `Api` class.

- The most common approach to adding dependency injection is by passing the required data/object through the constructor.

```dart
class LoginService {
  Api api;

  // Inject the api through the constructor
  LoginService(this.api);
}
```

- The same problem can also occur with widgets in Flutter.
- To tackle this problem, we can use a widget called InheritedWidget. (For more details, please refer to the YouTube reference link and view the problem that occurs without dependency injection in the widget tree.)

### Inherited Widget

- This widget helps to pass all of its properties to the child widgets that extend it.
- Note: We usually wrap the InheritedWidget with the top widget so that the object becomes available to all the descendant widgets.
- The InheritedWidget implementation looks like this:

  ```dart
  import 'package:flutter/material.dart';

  class InheritedInjection extends InheritedWidget {
     final Widget child;

     InheritedInjection({Key key, this.child}) : super(key: key, child: child);

     static InheritedInjection of(BuildContext context) {
        return context.dependOnInheritedWidgetOfExactType<InheritedInjection>();
     }

     @override
     bool updateShouldNotify(InheritedInjection oldWidget) {
        return true;
     }
  }
  ```

  To add a property that is available to all the children of the InheritedWidget:

  ```dart
  import 'package:flutter/material.dart';

  class InheritedInjection extends InheritedWidget {
     final AppInfo _appInfo = AppInfo(); // Class Instance
     final Widget child;

     InheritedInjection({Key key, this.child}) : super(key: key, child: child);

     AppInfo get appInfo => _appInfo; // Getter for object

     static InheritedInjection of(BuildContext context) {
        return context.dependOnInheritedWidgetOfExactType<InheritedInjection>();
     }

     @override
     bool updateShouldNotify(InheritedInjection oldWidget) {
        return true;
     }
  }
  ```

  Using the appInfo object in the base widget (notice how we wrap the HomeView with the InheritedWidget we created):

  ```dart
  class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
        return InheritedInjection(
           child: MaterialApp(
           title: 'Flutter Demo',
           theme: ThemeData(
              primarySwatch: Colors.blue,
           ),
           home: HomeView(),
           ),
        );
     }
  }
  ```

  ```dart
  class HomeView extends StatelessWidget {
     HomeView({Key key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
        var appInfo = InheritedInjection.of(context).appInfo; // Using the object of the inherited widget
        return Scaffold(
           body: Center(
           child: Text(appInfo.FreezeMessage),
           ),
        );
     }
  }
  ```

### Get_it

- Get_it is context-independent.

- Get_it provides different methods:

  1. `registerLazySingleton`: This method creates only one object when it is called and returns the same instance for all subsequent calls to this method.

  2. `registerSingleton`: This creates the object immediately and reuses the object for multiple calls.

  3. `registerFactory`: This creates a new object of the class whenever someone requests an instance of the class.

- To use the classes in the locator, follow this syntax:

  - `locator.get<class_name>()`: This is used to create an object of the class in the GetIt service method.

- Steps for using it in a project:

  - Add the dependency in pubspec.yaml:
    - `get_it: ^1.0.3`
  - Create a new class called `locator` and declare an instance of `GetIt`. Create a method in `locator` that has objects of all the required classes.
  - Define the required class.

    ```dart
    // user_class.dart

    class User {
      int age = 20;
      String name = "Krishna";

      User();
    }
    ```

  - Example:

    ```dart
    // locator.dart

    import 'package:get_it/get_it.dart';
    import '../user_class.dart';

    final locator = GetIt.instance;

    void service() {
      locator.registerLazySingleton<User>(() => User());
    }
    ```

  - Call the `service` method of `locator.dart` in `void main()`:

    ```dart
    Future<void> main() async {
      service(); // Calling the service method
      runApp(const MyApp());
    }
    ```

  - To use the object, use the following syntax:
    - `String data = locator<User>().name;`

### Injectable

- Injectable is a code generator for GetIt.
- It allows us to create classes that can be used anywhere in the project by simply using annotations.
- It uses a generator to generate the boilerplate code, such as factory methods or singleton methods, that we used to write in our service method in GetIt.
- Required dependencies:

  ```yaml
  dependencies:
    injectable: ^2.1.1
    get_it: ^7.6.0

  dev_dependencies:
    injectable_generator: ^2.1.5
    build_runner: ^2.3.3
  ```

**Step 1**: Create a new file, let's say `locator.dart`.

**Step 2**: Create an instance of `GetIt`.

**Step 3**: Create a global function and write `getIt.init()` inside it. Annotate the function with `@InjectableInit()`. This function initializes the GetIt instance.

```dart
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
```

**Step 4**: Run the build_runner command in the terminal to generate the boilerplate code (`.config.dart` file).

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Step 5**: Call `configureDependencies()` in the `main` function.

```dart
void main() {
  configureDependencies();
}
```

**Step 6**: Annotate the classes that need to be accessible to other widgets with the following annotations:

- `@Injectable`: Makes the class globally accessible.
- `@singleton`: Returns only one instance and reuses it.
- `@lazySingleton`: Returns only one instance of the class whenever it is called and reuses it.
- `@factoryMethod`: Returns a new instance each time.

```dart
import 'package:injectable/injectable.dart';

@lazySingleton
class Users {
  String name = "Bob";
}
```

## UI

### Pagination

- Pagination is one of the applications of Riverpod, which helps us improve performance and memory efficiency in Flutter applications.
- So, what exactly is Pagination?
  - Imagine you have a long list of widgets, for example, reels on Instagram.
  - When designing such applications, we want to have an infinite list of items, but we can't load all the list items at once.
  - Instead, we can load a pack of 5 items from the list and render them on the screen. When the user reaches the 5th item, we can fetch more 5 list items and so on.
  - By implementing this approach, we can improve performance and manage memory more efficiently.
- Pagination is the concept of loading and rendering data in chunks or pages, rather than loading everything at once.
- For more information and a detailed explanation of Pagination, you can watch the video provided in this [link](https://www.youtube.com/live/BJtQ0dfI-RA?feature=share).

### Custom Paint

With Custom Paint, we can draw custom artwork on widgets, such as shapes, lines, and more. Here's how you can use it:

First, create a new `StatelessWidget` where we will have a container on which we will draw:

```dart
class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.orange,
          child: CustomPaint(painter: ShapePainter()),
        ),
      ),
    );
  }
}
```

The `CustomPaint` widget is used to draw the artwork and takes a class that extends `CustomPainter` as an argument.

Now, create a new class that extends `CustomPainter`, let's name it `ShapePainter`. We need to override two methods of `CustomPainter`:

- `paint`: This method is called whenever the object needs to be repainted.
- `shouldRepaint`: This method is called when a new instance of the class is provided.

```dart
class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
```

Let's understand the parameters of the `paint` method:

- `canvas`: The canvas is the surface on which the shapes/lines will be drawn.
- `size`: Size gives the height and width of the canvas.

Inside the `paint` method, create an object of `Paint()`. This object will be the paintbrush for drawing the shapes. It has different properties that we can use, such as:

- `color`: To set the desired color.
- `strokeWidth`: The outline width of the shapes.
- `strokeCap`: The shape of the tip of the brush.
- There are many more properties you can explore.

The `Canvas` object has different methods that are used for drawing various shapes like lines, circles, and more.

Let's start by drawing a circle. To draw a circle, we need:

- `offset`: It represents a point on the canvas, where we need to give the coordinates (the convention is width first, then height).
- `width`: This is the radius of the circle.
- `paint object`: This is the paintbrush that will be used to draw the shape.

```dart
void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100, paint);
}
```

We can also use the `Path` class to draw custom shapes. The main concept of the `Path` class is to use lines to draw shapes. Here's an example of drawing a line:

```dart
var path = Path();
path.moveTo(0, size.height / 2);
path.lineTo(size.width, size.height / 2);
canvas.drawPath(path, paint);
```

In the above code, we first declare a `Path` object. It has two methods:

- `moveTo`: This is used to move the brush to the selected coordinate.
- `lineTo`: This is used to draw a line from the previous

point to the given coordinate.

Finally, we call the `drawPath` method of the canvas and specify the path and paint object.

Let's draw a rectangle using the `Path` class:

```dart
var path = Path();
path.moveTo(100, 100);
path.lineTo(100, 150);

path.moveTo(100, 150);
path.lineTo(200, 150);

path.moveTo(200, 150);
path.lineTo(200, 100);

path.moveTo(200, 100);
path.lineTo(100, 100);
canvas.drawPath(path, paint);
```

These are just some examples of what you can do with Custom Paint. There are many more shapes and techniques you can explore. For more information and a detailed explanation of Custom Paint in Flutter, you can check out the [link](https://blog.codemagic.io/flutter-custom-painter/).

### Clip Path

Clip Path is similar to Custom Paint as it is used to draw shapes. The main difference is that with Clip Path, we clip a canvas to create a desired shape.

Here are the steps to create a clip shape (Triangle):

1. Create a class that has a widget called `ClipPath`. This widget is used for clipping the child widget.
2. `ClipPath` takes a clipper object, which is a class that extends `CustomClipper<Path>`, and a child widget that will be clipped.
3. Visualize it like a stack where the child widget is behind and the clipper is on top. The desired part of the child widget will be visible after applying the clipper.

```dart
Scaffold(
  appBar: AppBar(title: const Text("Clip Path Example")),
  body: Center(
    child: ClipPath(
      clipper: Clipper(),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
      ),
    ),
  ),
);
```

In the above code, we use `ClipPath` widget with a custom `Clipper` class to clip a container widget.

The `Clipper` class extends `CustomClipper<Path>`:

```dart
class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
```

In the `Clipper` class, we override two methods:

- `getClip`: This method returns the path that represents the desired shape to be clipped. In this example, we create a triangle shape using the `Path` object.
- `shouldReclip`: This method determines whether the clipping should be reapplied. We return `true` here to ensure the clipping is always applied.

You can create custom clipper classes for different shapes like ovals, rectangles, arcs, and more.

Note: This is just a simple example to demonstrate clipping using Clip Path. There are many more complex shapes and clipping techniques you can explore.

For more information and a detailed explanation of Clip Path in Flutter, you can refer to the [link](https://blog.codemagic.io/flutter-custom-painter/).

## **Firebase**

In our project, Firebase will be used for Authentication, Crashlytics, Remote Config, and Firebase Cloud Messaging (FCM).

### Setup

- Download the Firebase CLI from this link: [https://firebase.tools/bin/win/instant/latest](https://firebase.tools/bin/win/instant/latest).
- Open the terminal and execute the following commands:
- `firebase login` - This command helps you log in with Firebase.
- `dart pub global activate flutterfire_cli` - This command installs the `flutterfire_cli`.
- Create a new project on Firebase (Website) - Ignore this step if the project is already created.
- `flutterfire configure` - This command configures Firebase for the selected project. Select the Firebase project and make sure to enable Android and iOS platforms by pressing the `space` button.
- `flutter pub add firebase_core` - This command adds the Firebase Core dependency.
- Note: After adding any Firebase dependency in `pubspec.yaml`, you need to run the command `flutterfire configure`.
- Add the following imports to the `main.dart` file:

  ```dart
  import 'package:firebase_core/firebase_core.dart';
  import 'firebase_options.dart';
  ```

- Write the following code to initialize Firebase in the `void main()` function:

  ```dart
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ```

- Run your app.

### Crashlytics

Crashlytics is used to find bugs and report crashes that occur during the production stage. It is a real-time crash reporter that helps developers solve bugs by specifying the point of occurrence of the bug. Crashlytics also helps identify crashes that impact a large number of users and provides alerts when issues suddenly increase in severity. It can help figure out which lines of code are causing crashes.

**Steps to add Crashlytics:**

1. `flutter pub add firebase_crashlytics` - Add the dependency to the pubspec.yaml file.
2. `flutterfire configure` - Select the project.
3. `flutter run` - Run the project.
4. Add the following code below the initialization of Firebase. This allows our application to send errors to Firebase Crashlytics. The platform dispatcher will catch all asynchronous errors.

   ```dart
   FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };
   PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
      };
   ```

5. Create a force exception to occur.

   ```dart
     TextButton(
         onPressed: () => throw Exception(),
         child: const Text("Throw Test Exception"),
     ),
   ```

6. Run the app, click the button, and check the Crashlytics dashboard.

Here is the corrected version:

### Firebase Remote Config

- Firebase Remote Config is a cloud service that allows us to change the behavior, appearance, or data of our app without requiring an app update.
- When using Remote Config, you define default values that control the behavior and appearance of your app.
- [Ref Link](https://firebase.google.com/docs/remote-config/get-started?platform=flutter)
- For example, suppose your app has a banner on the home page that changes with upcoming festivals. With a dedicated API, it would be difficult to change the banner without updating the app. However, using Remote Config, you can change the image address in the Firebase console, and the new image will be displayed in the app without updating the entire application.
- Here are the steps to implement Remote Config in your project:
  - `flutter pub add firebase_remote_config` - Add the dependency to the `pubspec.yaml` file.
  - `flutter pub add firebase_analytics`
  - `flutterfire configure` - Select the project.
  - Run the Flutter project.
- Now you can use Remote Config in your project as follows:

  ```dart
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 1),
  ));
  ```

  - The `remoteConfig` object will be used to retrieve and update the data.

- To set default values for the application, you can use the `setDefault` method to add JSON data that will be used until the app is connected to the Remote Config backend.

  ```dart
  await remoteConfig.setDefaults(const {
    "example_param_1": 42,
    "example_param_2": 3.14159,
    "example_param_3": true,
    "example_param_4": "Hello, world!",
  });
  ```

- To retrieve values stored in Remote Config, you can use different methods:

  - `getBool()` - Returns a Boolean value for the specified key.
  - `getDouble()` - Returns a Double value for the specified key.
  - `getInt()` - Returns an Integer value for the specified key.
  - `getString()` - Returns a String value for the specified key.

- Methods of `remoteConfig`:
  - `fetch()`: Retrieves the latest remote config values from the Firebase server. By default, it caches the fetched values locally on the device.
  - Note: The fetched values will not be applied until you call the `activate` method.
  - `activate()`: Applies the fetched remote config values in your app. After calling `fetch()` and obtaining the new config values, you need to activate them to make them effective.
  - `fetchAndActivate()`: Combines the fetch and activate methods.
- You also have the option to listen to changes in real-time without using the fetch and activate methods.

  ```dart
   remoteConfig.onConfigUpdated.listen((event) async {
   await remoteConfig.activate();

   // Use the new config values here.
  });
  ```

- Here's an example code snippet that demonstrates retrieving a list of songs from Remote Config:

```dart
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'songs_remote_config.g.dart';

@riverpod
FirebaseRemoteConfigService firebaseRemoteConfigService(_) {
  throw UnimplementedError();
}

class FirebaseRemoteConfigService {
  const FirebaseRemoteConfigService({
    required this.firebaseRemoteConfig,
  });

  final FirebaseRemoteConfig firebaseRemoteConfig;

  Future<void>

 init() async {
    try {
      await firebaseRemoteConfig.ensureInitialized();
      await firebaseRemoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(seconds: 5),
        ),
      );
      await firebaseRemoteConfig.fetchAndActivate();
    } on FirebaseException catch (e, st) {
      log(
        'Unable to initialize Firebase Remote Config',
        error: e,
        stackTrace: st,
      );
    }
  }

  String getSongsFromJson() => firebaseRemoteConfig.getString('songs');
}
```

Here is the corrected version:

## **Local Notification**

[Ref Link](https://pub.dev/packages/flutter_local_notifications)

- Local notifications help us show notifications when the application is in:
  - **A. Background State:** In this state, the app is not running in front of the user, but it runs in the background, and we can see it in the list of recent running apps.
  - **B. Foreground State:** In this state, the app runs in front of the user, and the user interacts with the application.
- **Dependencies required:**

  `flutter_local_notifications`

- The notification code will be in the `core/service` folder.
- Steps to implement local notifications in the project:

  - Create a class called `NotificationService`.
  - Create a static object of `FlutterLocalNotificationsPlugin`.

  ```dart
  static final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  ```

  - Create a void method called `initNotification`. This method will initialize all the necessary settings for our notifications.

    - Initialize the notification using the `initialize` method.
    - This method takes the parameter of type `InitializationSettings`.
    - Declare the object that takes two arguments:

      - `AndroidInitializationSettings`: This takes an icon to be set for the notification. (The icon you use should be from the drawable folder).
      - `IOSInitializationSettings`: This takes an `IOSInitializationSettings` object and specifies the `onDidReceiveLocalNotification` function. Read more about `onDidReceiveLocalNotification` from the reference link.

      ```dart
      static void initNotification() {
         flutterLocalNotificationsPlugin.initialize(
            initializationSettings,
            onDidReceiveLocalNotification: onDidReceiveLocalNotification,
          );

        final InitializationSettings initializationSettings =
            InitializationSettings(
                android: initializationSettingsAndroid,
                iOS: initializationSettingsIOS,
            );

        const AndroidInitializationSettings initializationSettingsAndroid =
            AndroidInitializationSettings('notification');

        final IOSInitializationSettings initializationSettingsIOS =
            IOSInitializationSettings(
          onDidReceiveLocalNotification: (id, title, body, payload) {},
        );
      }
      ```

    - Now create a method called `showNotification`. This method will display the notification in the application.
    - The method will take parameters: `id`, `title`, `body`, and `payload`.
    - `payload` helps us add extra information about the notification that helps us handle actions after the notification is clicked, etc.
    - The structure of the notification should be as shown below:

      ![Notification Structure](https://www.coderzheaven.com/wp-content/uploads/2020/07/c2.png)

    - The code to show the notification:

      ```dart
       void showNotification(int id, String title, String body, String payload) {
          flutterLocalNotificationsPlugin.show(
            id,
            title,
            body,
            const NotificationDetails(
                android: AndroidNotificationDetails("channel id", "channel name"),
            ),
            payload: payload,
          );
      }
      ```

  - Create a new file to handle the notifications: `notification_service.dart`.

  ```dart
  import 'dart:developer';

  import 'package:flutter_local_notifications/flutter_local_notifications.dart';

  class NotificationService {
    static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    static void initNotification() {
      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('notification');
      final IOSInitializationSettings initializationSettingsIOS =
          IOSInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) {},
      );

      final InitializationSettings initializationSettings =
          InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );

      flutterLocalNotificationsPlugin.initialize(initializationSettings,
          onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    }

    static void onDidReceiveLocalNotification(
        int id, String title, String body, String payload) async {
      if (payload != null) {
        log('notification payload: $payload');
      }
    }

    void showNotification(int id, String title, String body, String payload) {
      flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        const NotificationDetails(
          android: AndroidNotificationDetails("channel id", "channel name"),
        ),
        payload: payload,
      );
    }
  }
  ```

  - Note: We made the `flutterLocalNotificationsPlugin` and `initialize` method static because we only need to initialize the notification once during the start of the app.
  - Call the `initialize` method of the `NotificationService` class in the `main` function to initialize notifications when the application starts.

  ```dart
  NotificationService.initNotification();
  ```

  - Now we can call a notification on button click:

  ```dart
   ElevatedButton(
      onPressed: () {
        final newNotification = NotificationService();
        newNotification.showNotification(
            1, "Lunch time", "Get ready for lunch", "payload");
      },
      child: const Text("Show notification"),
    ),
  ```

</br>

## FCM

[Ref Link](https://firebase.google.com/docs/cloud-messaging/flutter/client)

- Firebase Cloud Messaging (FCM) is a cross-platform messaging solution that lets you reliably send messages at no cost.
- We can send notifications in all three application states: Foreground, Background, and Terminated.
- To set up FCM in the project:
  - Add the dependency by running `flutter pub add firebase_messaging`.
  - Run `flutterfire configure` and select the project.
  - Obtain the `Registration Token`.
- **`Registration Token`:** It is used to send notifications to a particular device. Each device has its own unique registration token.
- Get the token on button click or in `main`:

  ```dart
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print("Registration Token:");
  print(fcmToken);
  ```

- Go to the Firebase console.
- Select `Messaging` from the left drawer.
- Create your first notification.
- You will receive the notification in the application when it is in the background state.

  Now, if we receive a notification from FCM in the foreground or background state, we will handle it using local notifications.

  To handle FCM notifications in these states, follow these steps:

- Create a new class, let's call it `NotificationHandler`.
- Create a variable to store the `FirebaseMessaging` instance:

  ```dart
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  ```

- Create a method called `initializeFirebaseMessaging` to handle the initialization process. This method doesn't return anything.
- Call `requestPermission` and `getToken` to obtain the user's permission and registration token.
- Use `FirebaseMessaging.onMessage.listen` to listen for new notifications from FCM. When a new message is received, initialize the local notification and show it using `showNotification` method.

  ```dart
  Future<void> initializeFirebaseMessaging() async {
    final NotificationSettings settings =
        await _firebaseMessaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      _firebaseMessaging.getToken().then((token) {
        print('FCM Token: $token');
        // Send this token to your server to associate it with the user
        });
      }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('FCM Message: ${message.notification?.title}');
      NotificationService.initNotification();
      final newNotification = NotificationService();
      newNotification.showNotification(
        id: 1,
        body: message.notification?.body,
        title: message.notification?.title,
        payload: 'hello',
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('Notification clicked');
      navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (context) => const Songs()),
      );
    });
  }
  ```

- Note:
- Both listeners receive the message information, and then we call `showNotification` to initialize the local notification with the same message received from FCM.
- Don't forget to start the initialization of `NotificationHandler` in `main` or in the `initState` of any required widget:

`NotificationHandler().initializeFirebaseMessaging();`

## AutoRoute

[Ref Link](https://pub.dev/packages/auto_route)

- AutoRoute helps us manage the navigation between pages by eliminating the manual writing of boilerplate code.
- Required Dependencies:

  ```yaml
  dependencies:
    auto_route:

  dev_dependencies:
    auto_route_generator:
    build_runner:
  ```

- First, create a new folder called `routes`. Inside this folder, create a new Dart file named `auto_route.dart`.
- Create a new class and extend it with `\$<class_name>`.
- Annotate it with `@AutoRouterConfig`.
- Write the part file with `.gr.dart`.
- Inside the class, override the `routes` property with a list of `AutoRoute` objects.

  ```dart
  part 'auto_route.gr.dart';

  @AutoRouterConfig(replaceInRouteName: 'Page,Route')
  class AppRouter extends _$AppRouter {
    @override
    List<AutoRoute> get routes => [
          AutoRoute(page: HomeRoute.page, initial: true),
          AutoRoute(page: SecondRoute.page),
          AutoRoute(page: ThirdRoute.page),
        ];
  }
  ```

- Run the build runner to generate the `.gr.dart` file.
- Add the pages to the list of routes.
- Note:
  - The `replaceInRouteName` parameter is used to replace certain strings in the route names. For example, if a page has the name `HomePage`, it will be replaced with `HomeRoute` for routing purposes. If a page name does not have `Page`, it will append `Route` to the page name. For example, if the page name is `Home`, AutoRoute will make it `HomeRoute` for routing purposes.
- To make a page routable using AutoRoute, follow these steps:

  - Add the `@RoutePage()` annotation at the top of the page that needs to be routable.
  - Add `AutoRoute(page: SecondRoute.page)` to the routes list in the `AppRouter` configuration.
  - If you want the page to be the starting page, set `initial: true`.

  ```dart
   AutoRoute(page: HomeRoute.page, initial: true),
  ```

- After completing the above steps, create an instance of `AppRouter` where the routing configuration is defined.
- Declare this instance at the top level of your widget.

  ```dart
  final _appRouter = AppRouter();
  ```

- Replace the `MaterialApp` widget, which is the top-level widget, with `MaterialApp.router()`. Pass the `config()` method of `AppRouter` as the `routerConfig` parameter.

  ```dart
  class MyApp extends StatelessWidget {
    final _appRouter = AppRouter();

    @override
    Widget build(BuildContext context) {
      return MaterialApp.router(
        routerConfig: _appRouter.config(),
      );
    }
  }
  ```

- To navigate to another page, use either `context.pushRoute(const SecondRoute())` or `AutoRouter.of(context).push(const SecondRoute())`.
- To navigate to a new page that has parameters, use `AutoRouter.of(context).push(LoginRoute())`.

## Secured Shared Preference

[Ref Link](https://pub.dev/packages/secure_shared_preferences)

- In Flutter, SharedPreferences is a mechanism for storing small, persistent key-value pairs on the device. It allows you to save and retrieve simple data types such as booleans, integers, doubles, strings, and string lists.
- Using Secure Shared Preference helps in encrypting both the key and value and storing them locally.

  Steps for using it in your project:

  - Add `secure_shared_preferences` to the `pubspec.yaml` file.
  - Create an instance:

    ```dart
    var pref = await SecureSharedPref.getInstance();
    ```

  - Inserting data in shared preference:

    ```dart
    pref.putString("Key", "Value", isEncrypted: true);
    ```

    - Note:
      - If `isEncrypted` is set to `false`, normal shared preference is used and the data is not encrypted.
      - The data type to store in shared preference has different methods. For example: `pref.putInt('key', 2)`, `pref.putBool()`, etc.

  - Retrieving data from shared preference:

    ```dart
    pref.getString("key", isEncrypted: true);
    ```
