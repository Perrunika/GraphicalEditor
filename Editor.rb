class Editor
  
  @m = 0
  @n = 0
  @data = []
      
  def create_array m, n, color 
    if m >= 1 and n <= 250
      @m = m
      @n = n
      a = Array.new n,color
      @data = a.map! { Array.new m, color }  
      puts @data.inspect    
    else
      puts "Arguments must satisfy 1 <= M, N <= 250"
    end 
  end
  
  def clear_table color
    create_array @m, @n, color
  end
    
  def color_pixel x, y, c 
    if y < @m and x < @n
       @data[y][x] = c
    else
      puts "Arguments must satisfy x < #{@n}, y < #{@m}"
    end 
  end
  
  def draw_vertical x, y1, y2, c
    for i in y1..y2
        @data[i][x] = c
    end
  end
  
  def draw_horizontal x1, x2, y, c
     for i in x1..x2
         @data[y][i] = c
     end
  end
   
  
  def draw_region x, y, c
    org = String.new(@data[y][x])
    @data[y][x] = c
    if x < @m and y < @n
      if x+1 < @m 
        if @data[y][x+1].to_s == org
          @data[y][x+1] = c
        end
      end
      if x-1 > -1
        if @data[y][x-1].to_s == org
          @data[y][x-1] = c
        end
      end 
      if y+1 < @n
        if @data[y+1][x].to_s == org
          @data[y+1][x] = c
        end
      end
      if y-1 > -1
        if @data[y-1][x].to_s == org
          @data[y-1][x] = c
        end
      end
    else
      puts "Arguments must satisfy y < #{@n}, x < #{@m}"
    end
  end


  def show_content
    str = String.new
    for x in 0..@n-1
      for y in 0..@m-1
        str = str + @data[x][y]
      end
      puts str + "\n"
      str = ""
    end
  end
   
   def terminate_session
     exit
   end  
end