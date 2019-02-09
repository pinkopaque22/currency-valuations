class ArticleEnableExternalCanonicalUrl < ActiveRecord::Migration
  def up
    GlobalVariable
      .where(name: 'article.external.canonical.enabled')
      .update_all(string_value: 'true')
  end

  def down
    GlobalVariable
      .where(name: 'article.external.canonical.enabled')
      .update_all(string_value: 'false')
  end
end
