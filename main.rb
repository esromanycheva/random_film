require_relative 'lib/film'

scores = 0

filenames = Dir[File.join(__dir__, "data/films", "*.txt")]

info_films = filenames.map { |filename| File.readlines(filename, chomp: true) }

films = info_films.map do |name, producer, year|
  Film.new(name, producer, year)
end

all_producers = films.map { |film| film.producer }.uniq


puts "Программа «Фильм на вечер»"
all_producers.each_with_index do |producer, i|
  puts "#{i + 1}: #{producer}"
end
puts "Фильм какого режиссера вы хотите сегодня посмотреть?"

user_answer = STDIN.gets.to_i

tonight_films = films.select { |film| film.producer == all_producers[user_answer - 1] }

puts "И сегодня вечером рекомендую посмотреть:"
puts tonight_films.sample
