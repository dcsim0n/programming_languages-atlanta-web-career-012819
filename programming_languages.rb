def languages()
  languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
end

def children(parent)
  parent.values()
end

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, name|
    name.each do |language, type|
      if new_hash[language][:style].length
        style = new_hash[language][:style] << style
      else
        style = [style]
      end
      new_hash[language] = {type: type[:type], style: style}
    end
  end
  new_hash
end
