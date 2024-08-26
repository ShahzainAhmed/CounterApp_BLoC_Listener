# CounterApp using BLoC Listener

BlocListener: is used whenever we have to invoke or call a function, we dont rebuild anything, so no need to use BlocBuilder, navigations are also part of BlocListener

Now for listening the states, i am going to define another state called ActionState, becasue these things, snackbar, alert box, navigations, these are not rebuilding, thats why ill create another abstract class 

You can achieve same thing of BlocBuilder from BlocListener by using setState() but this is not a correct approach, if u have to increment counter on the screen, that means u have to rebuild the screen, for that BlocBuilder is the correct approach, but just in case, to let you know, we can use BlocListener to achieve same thing as well by using setState().
