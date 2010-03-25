module Cleaner
  
  def clean(text)
    text.
     gsub(/\s*(\n\s*)+/, "\n").       #DUPS WHITESPACES
     gsub(/(?<=[^\\b\\.])(\s*\n\s*)+/," ").       # redundant new lines
     gsub(/(?<=\.)\s*(\n*\s*)*\./,".").       # redundant new lines
     gsub(/(.{10,300})(?=\1)/,"")              #dup text
  end
end