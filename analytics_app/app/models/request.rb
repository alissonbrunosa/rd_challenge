class Request 
  include ActiveModel::Model
  attr_accessor :email, :views, :visitor

  validates :email,
            presence: true
  validates :views,
            presence: true

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end


  private
    def persist!
      @visitor = Visitor.new(email: email)
      views.each do |view| 
        @visitor.views.build(view)
      end
      @visitor.save!
    end
end