def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map {|array| badge_maker(array)}
end

def assign_rooms(speakers)
    array = []
    speakers.each_with_index do |speakers, index|
        index += 1
        array << "Hello, #{speakers}! You'll be assigned to room #{index}!"
    end
    array
end

def printer(people)
    badges = batch_badge_creator(people)
    rooms = assign_rooms(people)
    badges.each {|badges| puts "#{badges}"}
    rooms.each {|rooms| puts "#{rooms}"}
end
