module ArticlesHelper
  def render_with_tags(hashbody)
    hashbody.gsub(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/) { |word| link_to word, "/article/tag/#{word.delete("#")}",data: {"turbolinks" => false} }.html_safe
  end
end