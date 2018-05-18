class TableController < ApplicationController
  def create

    @table = Table.new(table_params)
 
    # 모델 만들때 '작성자'도 만들고 아래처럼 쓰면 현재 로그인한 사람의 아이디로 적힘
    # @comment.### = current_user.id
    @table.post_id=params[:post_id]
    @table.save
    redirect_to :back
  end

  def destroy
    @table=Table.find(params[:id])
    @table.destroy
    
    redirect_to :back
  end

  def table_params
    params.require(:table).permit(:item, :total, :EA, :price, :etc)
  end


  def index
  end
end
