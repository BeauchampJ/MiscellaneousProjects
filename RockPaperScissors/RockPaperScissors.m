%This is a script where you can play rock, paper, scissors against the
%computer

%Housekeeping


%defines variables that will be used
loss=0;
win=0;
tie=0;
playtest=1;

%A while loop that the meat of our program runs in


    
    %menu that allows the user to pick either rock/paper/scissors
    user_choice = menu('Pick one!','Rock','Paper','Scissors');
    
    %Assign users choice to a number
    if user_choice=='Rock'
        user_choice=1;
    elseif user_choice=='Paper'
        user_choice=2;
    elseif user_choice=='Scissors'
        user_choice=3;
    end
    %Computer choice is made which is associated with a number
    computer=randi([1 3]);
    
    if computer==user_choice %If both the numbers are the same, a tie occurs
        disp('Tie')
        tie=tie+1;
    elseif computer>user_choice || (user_choice~=1 && computer==3) %tests to see if the computers number is greater
        disp('Computer wins')
        loss=loss+1;
    else
        disp('You win')
        win=win+1;
    end
    
    play_again=menu('Want to play again?','yes','no');
    
    if play_again=='no'
        close all;clc;clear;
    end





