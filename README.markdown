mongoid_uuid_generator
======================
在Mongoid实例初始化后自动生成uuid字段。

Usage
----------------------

配置

```ruby
class User
  include Mongoid::UUIDGenerator
end

```

查询

```text
irb(main):001:0> User.uuid User.last.uuid
=> #<User _id: 528dba704f14f0bdea000001, created_at: 2013-11-21 07:46:56 UTC, updated_at: 2013-12-04 06:30:13 UTC, deleted_at: nil, uuid: "fc86e36c-347b-451d-a240-e0dce02f86cf", classroom_ids: ["0a8d020f-270d-4d3c-b02d-0e99c026935e", "f2c5d023-fe0a-4dae-be0e-7a387c99924f"], school_id: "815dd378-8967-11e2-bf8c-00163e011797", name: "沉沉才", user_type: "student", birthday: 1999-09-09 00:00:00 UTC, is_staff: false, cookie: nil>
irb(main):002:0>
```
