FactoryBot.define do
  factory :article do
    title "Article title"
    text "Article text"

    #Создаем афбрику с название article_with_comments для создания статьи
    # с несколькими комментариями
    factory :article_with_comments do
      #После создания article
      after :create do |article, evaluator|
        # создаем список из 3-х комментариев
        create_list :comment, 3, article: article
  end
end
