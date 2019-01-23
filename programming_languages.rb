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
  
  languages.each do |style name|
    name.each do |language type|
      new_hash[language] = {type: type, style: style}
    end
  end
  new_hash
end
