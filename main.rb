class Morse
  def initialize(code, decode)
    @morse_code = code
    @morse_decode = decode
  end

  def coding(sentence)
    sentence_coded = ''
    sentence.chars.each do |letter|
      sentence_coded = "#{sentence_coded}#{@morse_code[letter]} "
    end
    sentence_coded
  end

  def decoding(sentence_coded)
    sentence_decoded = ''
    sentence_coded.gsub!('  ', ' _ ')
    sentence_coded.split.each do |letter|
      sentence_decoded += @morse_decode[letter]
    end
    sentence_decoded
  end
end
morse_code = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  ' ' => '',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}

morse_decode = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  '  ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '----- ' => '0',
  '_' => ' ',
  '/' => ' '
}

morse_obj = Morse.new(morse_code, morse_decode)

sentence = 'my name is robert'
crypted_massage = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'
text_coded = morse_obj.coding(sentence)
text_decoded = morse_obj.decoding(crypted_massage)

puts text_coded
puts text_decoded
