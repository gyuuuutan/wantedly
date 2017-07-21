== README  

# データベース設計  

## テーブル  

### users  
|column|type|option|  
|:--:|:--:|:--:|  
|name|string|null: false|  
|e-mail|string|null: false, unique: true|  
|password|string|null: false|  

### companies  
|column|type|option|  
|:--:|:--:|:--:|  
|name|string|null: false, index: true|  
|e-mail|string|null: false, unique: true|  
|address|text|null: false|  
|latitude|integer|null: false|  
|longitude|integer|null: false|  

### entries  
|column|type|option|  
|:--:|:--:|:--:|  
|user_id|integer|null: false, foreign_key: true|  
|company_id|integer|null: false, foreign_key: true|  
|interest_level|string|null: false|  

### ads
|column|type|option|  
|:--:|:--:|:--:|  
|company_id|integer|null: false, foreign_key: true|  
|title|string|null: false|  
|image|string||  
|what|text||  
|why|text||  
|how|text||  

### company_members  
|column|type|option|  
|:--:|:--:|:--:|  
|company_id|integer|null: false, foreign_key: true|  
|name|string|null: false, unique: true|  
|image|string||  
|position|string||  
|career|text||  

### job_types  
|column|type|option|  
|:--:|:--:|:--:|  
|ads_id|integer|null: false, foreign_key: true|  
|type|string|null: false|  

### job_categories  
|column|type|option|  
|:--:|:--:|:--:|  
|ads_id|integer|null: false, foreign_key: true|  
|category|string|null: false|  

### regions  
|column|type|option|  
|:--:|:--:|:--:|  
|ads_id|integer|null: false, foreign_key: true|  
|region|string|null: false|  


## アソシエーション  

### users    
has_many :entries    

### companies  
has_many :entries  
has_many :ad  
has_many :campany_members    

### entries  
belongs_to :user  
belongs_to :company    

### ads  
belongs_to: company  
has_many :job_types  
has_many :job_categories  
has_many :regions    

### company_members  
belongs_to :company    

### job_types  
belongs_to :ad    

### job_categories  
belongs_to :ad    

### regions  
bolengs_to :ad    



