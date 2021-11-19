#initialize board
board=[' ',' ',' ',' ',' ',' ',' ',' ',' ']
is_game_win=false;


#define all functions
def display_board(board)
    puts "TIC TAC TOE\n\n".center(100)

     puts "\n"
   puts board[0]+' | '+board[1]+' | '+board[2]
   puts '----------'
   puts board[3]+' | '+board[4]+' | '+board[5]
   puts '----------'
   puts board[6]+' | '+board[7]+' | '+board[8]
   
end

def get_user_move(board)
    loop do
    puts "Enter Your Input Move (1-9)"
    move=gets.chomp.to_i
    board[move-1]==' '?  (board[move-1]='X'
        return) :( puts "Invalid Move")

    
    end
end

def computer_move(board)
    #offensive move

    i = 0
    until i > 2 do 
        if(board[i]=='O' and board[3+i]=='O')
            board[6+i]==' '? (board[6+i]='O'
                return) :()
        end
        i += 1
    end

    i = 0
    until i > 6 do 
        if(board[i]=='O' and board[1+i]=='O')
            board[i+2]==' '?(  board[i+2]='O'
            return):()
        end
    i += 3
    end

    i = 0
    until i > 2 do 
        if(board[3+i]=='O' and board[6+i]=='O')
        
            board[i]==' '?( board[i]='O'
                return):()
        end
    i += 1
    end

    i=0 
    until i > 6 do
        if(board[1+i]=='O' and board[2+i]=='O')

            board[i]==' '?(  board[i]='O'
                return):()
        end
    i += 3
    end


    i=0 
    until i > 6 do
        if(board[i]=='O' and board[2+i]=='O')

            board[i+1]==' '?( board[i+1]='O'
                return):()
        end
    i += 6
    end

    i=0 
    until i > 2 do
        if(board[i]=='O' and board[6+i]=='O')

            board[i+3]==' '?( board[i+3]='O'
                return):()
        end
    i += 2
    end

        board[0]=='O' and board[4]=='O' and board[8]==' '?( board[8]='O'
        return):()
        board[8]=='O' and board[4]=='O' and board[0]==' '?( board[0]='O'
            return):()
        board[4]=='O' and board[6]=='O' and board[2]==' '?( board[2]='O'
            return):()
        board[2]=='O' and board[4]=='O' and board[6]==' '?( board[6]='O'
            return):()



        #stop win 

        i = 0
        until i > 2 do 
            if(board[i]=='X' and board[3+i]=='X')
                board[6+i]==' '?(board[6+i]='O'
                return):()
            end
            i += 1
        end

        i = 0
        until i > 6 do 
            if(board[i]=='X' and board[1+i]=='X')
                board[i+2]==' '?( board[i+2]='O'
                return):()
            end
        i += 3
        end

        i = 0
        until i > 2 do 
            if(board[3+i]=='X' and board[6+i]=='X')
                board[i]==' '?(  board[i]='O'
                    return):()
            end
        i += 1
        end

        i=0 
        until i > 6 do
            if(board[1+i]=='X' and board[2+i]=='X')
                board[i]==' '?(   board[i]='O'
                    return):()
            end
        i += 3
        end

        i=0 
        until i > 6 do
            if(board[i]=='X' and board[2+i]=='X')
                board[i+1]==' '?(    board[i+1]='O'
                    return):()
            end
        i += 6
        end

        i=0 
        until i > 2 do
            if(board[i]=='X' and board[6+i]=='X')
                board[i+3]==' '?( board[i+3]='O'
                    return):()
            end
        i += 2
        end
        #diagonals stop
        board[0]=='X' and board[4]=='X' and board[8]==' '? (board[8]='O'
            return):()
        board[8]=='X' and board[4]=='X' and board[0]==' ' ?(board[0]='O'
            return):()
            
        board[4]=='X' and board[6]=='X' and board[2]==' '? (board[2]='O'
            return):()
        board[2]=='X' and board[4]=='X' and board[6]==' '? ( board[6]='O'
            return):()
        


        #random move

        board[4]==' '? (board[4]='O'
        return):()
        board[1]==' '? (board[1]='O'
            return):()
        for a in 0..8 do
            board[a]==' '?( board[a]='O'
        return  ):()
        end
        

end





def is_win(board)
        
    comp_wins=true
    player_wins=true


    #for horizontal check


    i = 0 
    until i > 6 do
        ((board[i]=='X' and board[i+1]=='X' and board[i+2]=='X') or (board[i]=='O' and board[i+1]=='O' and board[i+2]=='O')) ? (return true):()
        i += 3
    end

    #for vertical check
    i = 0 
    3.times do |i|
        ((board[i]=='X' and board[i+3]=='X' and board[i+6]=='X')or(board[i]=='O' and board[i+3]=='O' and board[i+6]=='O')) ? (return true):()
    end

    #for diagonals
    ((board[0]=='X' and board[4]=='X' and board[8]=='X')or(board[0]=='O' and board[4]=='O' and board[8]=='O')or(board[2]=='X' and board[4]=='X' and board[6]=='X')or(board[2]=='O' and board[4]=='O' and board[6]=='O')) ? (return true):()


    return false
end


#menu
puts "TIC TAC TOE\n\n".center(100)
puts "1=> Play With Computer"
puts "2=> Play Verses"
puts "0=> Exit"


choice=gets
choice=choice.to_i

case choice
when 1
    #play with Computer
    system("clear")

    while !is_game_win
    display_board(board)
    puts "\nX turn "
    get_user_move(board)
    system("clear")
    is_game_win=is_win(board)

    if(is_game_win)
        system("clear")
        display_board(board)
    puts "User Wins!!"
    break;
    end
     computer_move(board)

    is_game_win=is_win(board)
puts (is_game_win)
    if(is_game_win)
        system("clear")
        display_board(board)
        puts "Computer Wins!!"
        break;
    end 
  


    end


when 2
puts "Its 2"
    #2v2

else 
    puts "Exiting.."

end