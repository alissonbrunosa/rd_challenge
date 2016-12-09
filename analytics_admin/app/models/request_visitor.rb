class RequestVisitor
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
      @visitor = Visitor.where(email: email).first_or_create
      views.each do |view| 
        next if(view[:id].present? && @visitor.views.exists?(view[:id]))
        @visitor.views.build(view)
      end
      @visitor.save!
    end
end