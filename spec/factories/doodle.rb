FactoryBot.define do
  factory :doodle do
    path { 'https://scontent.ftia8-1.fna.fbcdn.net/v/t31.0-8/20785807_1031764710259476_6834944016236025040_o.png?_nc_cat=102&_nc_oc=AQnCJgOnm8dfmOMawIoZy7ZN9BcxzZgQPncZ59a5WAnYi7siMXm3kDgBLzyz-KsH_Mo&_nc_ht=scontent.ftia8-1.fna&oh=f650fcae27320317f0bc140f53de4f75&oe=5DEB8B69' }
    description { 'Good doodle 1' }
    user
  end
end
