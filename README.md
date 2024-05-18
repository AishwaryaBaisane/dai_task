# daily_clock_task

A new Flutter project.

## 5.1 Flutter Buttons.
<div align = "center">
  <img align = "left" height="550" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/d0620986-7f0f-491f-9e79-f40f0ed060e2"/>
</div>!

## What is Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task.

## What is Future Class ?

The Future class represents a future result of an asynchronous computation. This result will eventually appear in the Future after the processing is complete.

## What is Duration class ?

The Duration class represents an interval of time in seconds or nanoseconds and is most suited for handling shorter amounts of time, in cases that require more precision. 

We can determine the difference between two instants as a Duration object using the between() method: Instant start = Instant.


## What is Future.delayed() constructor ?

The Future. delayed constructor enables you to create a future that runs its computation after a prespecified duration. 


```dart
import 'dart:io';

void main() 
{
  print("hello Flutter");
  Future.delayed(Duration(seconds: 3),()=>print("hello dart"));
 

}

```


## What is the Use of the async & await keyword?

### Use of async keyword :

The async keyword is used to mark a function as asynchronous. An asynchronous function can perform tasks that may take some time to complete, such as fetching data from a network or reading from a file.

### Use of await keyword :

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. It can only be used inside an async function.

```dart
import 'dart:async';
void main() async 
{
  print("hello Flutter");
  await Future.delayed(Duration(seconds: 3),()=>print("hello dart"));
  
}
```
## What is Recursion ? 

Recursion is defined as a process which calls itself directly or indirectly and the corresponding function is called a recursive function.


```dart
import 'dart:async';

void main() 
{
  print("hello Flutter");
  Timer.periodic(Duration(seconds: 1),(Timer) {
    print("hello dart");
  });


}

```


### What is Timer class ?

A countdown timer that can be configured to fire once or repeatedly. The timer counts down from the specified duration to 0.

```dart
import 'dart:async';

void main() async 
{

  print("hello Flutter");
  Timer(Duration(seconds: 2),()=>print("hello php"));
 
  
}
```


### What is Timer.periodic and use with Example?

```dart
import 'dart:async';

void main() 
{
  print("hello Flutter");
  Timer.periodic(Duration(seconds: 1),(Timer) {
    print("hello dart");
  });


}

```
## 5.3 Digital Clock App 

<div align = "center">
  <img align = "left" height="550" src="https://github.com/AishwaryaBaisane/dai_task/assets/149373597/5a838b9c-7d7e-492e-87bb-38d0193594af"/>
  <video height="550" src="https://github.com/AishwaryaBaisane/dai_task/assets/149373597/59f62148-fad4-40b5-a32e-2a39df9ecc1c"/>
</div>!


## 5.4 Analogue Clock App

<div align = "center">
  <img align = "left" height="550" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/d8cf3e9c-7563-4516-9fef-c838407c2a85"/>
  <video height="550" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/37d6b825-96c3-46eb-bcf6-152b44bb53a7"/>
</div>

## Timer App :

<div align = "center">
  <img align = "left" height="500" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/b6e4e580-ec86-4d4a-800f-25f561018925"/>
  <img align = "left" height="500" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/538d7322-8cf9-413f-baef-c97d6540fc80"/>
  <img align = "left" height="500" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/b698e036-06c5-4f48-ae64-e3125f8bdea6"/>
   <video height="550" src="https://github.com/AishwaryaBaisane/daily_clock_task/assets/149373597/925ffb83-3aaa-4c73-8b20-f92d3743ac87"/>

</div>



