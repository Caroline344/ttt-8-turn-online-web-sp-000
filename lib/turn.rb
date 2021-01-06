def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input = input.to_i
    input.to_i - 1
end

def position_taken?(board,index)
    if (board[index] == " " || board[index] == "" || board[index] == nil)
      false
    else board[index] == "X" || board[index] == "O"
      true
    end
  end

def valid_move?(board,index)
    if !position_taken?(board, index) && (index).between?(0,8)
        return true
      else 
        return false
      end
    end

def move(board,index,token = "X")
    board[index] = token
end

def current_player(board)
    turn_count(board) % 2 == 0? "X" : "O"
  end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index)
        player_move(board, index, current_player(board))
        display_board(board)
      else
        turn(board)
    end
end

def turn_count(board)
    counter = 0
    board.each {|space|
      if space == "X" || space == "O"
        counter += 1   
      end
    }
    counter
  end

  def player_move(board, index, marker)
    board[index] = marker
   end
    
    
   
    

