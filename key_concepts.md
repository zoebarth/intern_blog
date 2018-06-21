# Key concepts from yesterday

## Database Migrations: 
  - Syntax for creating
  - Syntax for adding/removing columns
  - rake db:rollback
  - rake db:migrate
  - rake db:migrate:redo
  - http://guides.rubyonrails.org/active_record_migrations.html

## ERB and Rails view interpolation:
  - <%= %>
  - View partials
  - http://guides.rubyonrails.org/layouts_and_rendering.html
  
## Rails form helpers
  - `form_with`
  - `form.text_field` vs `text_field_tag`
  - How form inputs translate to parameters passed to the controller in a request
  - http://guides.rubyonrails.org/form_helpers.html
  
## Rails routing and HTTP verbs
  - `GET`: `show, index, edit, update`
  - `POST`: `create`
  - `PUT/PATCH`: `update`
  - `DELETE`: `destroy`
  - http://guides.rubyonrails.org/routing.html
