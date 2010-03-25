module Cleaner
  
  def clean(text)
    text.
     gsub(/\n+/, "\n").
     gsub(/(?<=[^\\b\\.])(\s*\n\s*)+/," ").
     gsub(/(.{10,300})(?=\1)/,"")
  end
end