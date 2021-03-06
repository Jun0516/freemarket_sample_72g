FactoryBot.define do

  factory :good do
    name                  {"あああ"}
    state                 {"未使用に近い"}
    region                {"東京"}
    postage               {"着払い(購入者負担)"}
    expanation            {"本当は売りたくありません"}
    shipping_date         {"1~2日で発送"}
    delivery_method_id    {2}
    price                 {890}
    category_id           {20}
    size_id               {3}

    after(:build) do |instance|
      build('category', good:instance) unless instance.category
    end
  end
end
