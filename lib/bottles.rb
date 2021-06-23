class Bottles
  def song
    verses(99, 0)
  end

  def verses(from, to)
    from.downto(to).map { |number|
      verse(number)
    }.join("\n")
  end

  def verse(number)
    if number > 2
      <<~VERSE
      #{number} bottles of beer on the wall, #{number} bottles of beer.
      Take one down and pass it around, #{number - 1} bottles of beer on the wall.
      VERSE
    elsif number == 2
      <<~VERSE
      2 bottles of beer on the wall, 2 bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE
    elsif number == 1
      <<~VERSE
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
  end
end