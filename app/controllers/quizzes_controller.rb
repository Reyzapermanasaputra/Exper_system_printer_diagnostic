class QuizzesController < ApplicationController
  def home
    session[:number] = 3
  end

  def start
    puts session[:number]
    if session[:number] == 3
      @indication = Indication.first(session[:number])
    elsif session[:number] == 4
      @indication = Indication.where(code: ['p04', 'p06'])
    elsif session[:number] == 5
      @indication = Indication.where(code: ['p05'])

    elsif session[:number] == 7
      @indication = Indication.where(code: ['p08', 'p10'])
    elsif session[:number] == 8
      @indication = Indication.where(code: ['p09'])
    elsif session[:number] == 10
      @indication = Indication.where(code: ['p07'])
    elsif session[:number] == 12
      @indication = Indication.where(code: ['p11'])
    elsif session[:number] == 14
      @indication = Indication.where(code: ['p12', 'p14'])
    elsif session[:number] == 15
      @indication = Indication.where(code: ['p13'])
    elsif session[:number] == 17
      @indication = Indication.where(code: ['p15'])
    end
  end

  def answer
    if params[:indication] == 'P01'
      session[:number] = 4
      redirect_to action: "start"
    elsif params[:indication] == 'P04'
      session[:number] = 5
      redirect_to action: "start"
    elsif params[:indication] == 'P05'
      session[:number] = 6
      redirect_to action: "end"


    elsif params[:indication] == 'P02'
      session[:number] = 7
      redirect_to action: "start"
    elsif params[:indication] == 'P08'
      session[:number] = 8
      redirect_to action: "start"
    elsif params[:indication] == 'P09'
      session[:number] = 9
      redirect_to action: "end"

    elsif params[:indication] == 'P06'
      session[:number] = 10
      redirect_to action: "start"
    elsif params[:indication] == 'P07'
      session[:number] = 11
      redirect_to action: "end"

    elsif params[:indication] == 'P10'
      session[:number] = 12
      redirect_to action: "start"
    elsif params[:indication] == 'P11'
      session[:number] = 13
      redirect_to action: "end"

    elsif params[:indication] == 'P03'
      session[:number] = 14
      redirect_to action: "start"
    elsif params[:indication] == 'P12'
      session[:number] = 15
      redirect_to action: "start"
    elsif params[:indication] == 'P13'
      session[:number] = 16
      redirect_to action: "end"

    elsif params[:indication] == 'P14'
      session[:number] = 17
      redirect_to action: "start"
    elsif params[:indication] == 'P15'
      session[:number] = 18
      redirect_to action: "end"
    else
      #code
    end
  end

  def end
    if session[:number] == 6
      @solution = Solution.find_by_code('s01')
    elsif session[:number] == 9
      @solution = Solution.find_by_code('s03')
    elsif session[:number] == 11
      @solution = Solution.find_by_code('s02')
    elsif session[:number] == 13
      @solution = Solution.find_by_code('s04')
    elsif session[:number] == 16
      @solution = Solution.find_by_code('s05')
    elsif session[:number] == 18
      @solution = Solution.find_by_code('s06')
    end
    @solution = Solution.find_by_code('s01')
    session[:number] = 1
  end

end
