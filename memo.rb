 require "csv" 
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i 
 
 
 if memo_type != 1 && memo_type != 2 
  puts "規定以外の値が入力されました。最初からやり直してください"
  
 elsif memo_type == 1
  puts "メモを新規作成します。拡張子を除いたファイル名を入力してください"
  file_name = gets.to_s
  puts"メモしたい内容を記入してください"
  puts"完了したらCtrl+Dを押します"
  
  CSV.open("#{file_name}.csv",'a') do |input|
   user_inputs = readlines
   input << user_inputs
  end
  
  puts "作成が完了しました"   
   
 elsif memo_type == 2
  puts"既存のメモに書き込みを行います。拡張子を除いたファイル名を入力してください"
  file_name = gets.to_s
  puts"メモしたい内容を記入してください"
  puts"完了したらCtrl+Dを押します"
   
  CSV.open("#{file_name}.csv",'a') do |input|
   user_inputs = readlines
   input << user_inputs
  end   
 end

