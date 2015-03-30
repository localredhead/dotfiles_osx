Hirb.enable pager: !(ENV['PAGER'] && "cat" == ENV['PAGER'].split(File::SEPARATOR).last)


def pbcopy(input)
  str = input.to_s
  IO.popen('pbcopy', 'w') { |f| f << str }
  str
end

def pbpaste
  `pbpaste`
end

IRB.conf[:PROMPT_MODE] = :DEFAULT
