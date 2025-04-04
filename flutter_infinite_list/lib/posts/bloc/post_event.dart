// Before we dive into the implementation, we need to define what our PostBloc is going to be doing.
// At a high level, it will be responding to user input (scrolling) and fetching more posts in order for the presentation layer to display them. Let’s start by creating our Event.
// Our PostBloc will only be responding to a single event; PostFetched which will be added by the presentation layer whenever it needs more Posts to present. Since our PostFetched event is a type of PostEvent we can create bloc/post_event.dart and implement the event like so.


part of 'post_bloc.dart';

//Sealed classes are a powerful feature that enables developers to create a restricted class hierarchy. Unlike regular classes, sealed classes can only be extended within the same file, making them an excellent choice for representing finite sets of related classes.
sealed class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class PostFetched extends PostEvent {}

// To recap, our PostBloc will be receiving PostEvents and converting them to PostStates. We have defined all of our PostEvents (PostFetched) so next let’s define our PostState.