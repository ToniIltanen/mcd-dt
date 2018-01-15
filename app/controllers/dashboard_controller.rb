class DashboardController < ApplicationController
  def index
    @unit = Unit.find_by(name: params[:name])
  end
  def data
    @unit = Unit.find_by(name: params[:name])
    @dtinfo = Dtinfo.new
  end
  def reports
    @unit = Unit.find_by(name: params[:name])
    @dt = Dtinfo.where(:unit_id => @unit.id).where("day > ?", Time.now-31.days)
    @morning = Dtinfo.where(:unit_id => @unit.id, :daypart_id => 1).where("day > ?", Time.now-31.days)
    @day = Dtinfo.where(:unit_id => @unit.id, :daypart_id => 2).where("day > ?", Time.now-31.days)
    @evening = Dtinfo.where(:unit_id => @unit.id, :daypart_id => 3).where("day > ?", Time.now-31.days)
    @night = Dtinfo.where(:unit_id => @unit.id, :daypart_id => 4).where("day > ?", Time.now-31.days)
  end

  def save_data
    @dtinfo = Dtinfo.create(post_params)
    @unit = Unit.find_by(name: params[:name])
      if @dtinfo.save
        flash[:notice] = "Tieto tallennettu onnistuneesti"
        redirect_to '/dashboard/' + @unit.name + '/data'
      else
        render :action => 'data'
      end
  end

  def post_params
    params.require(:dtinfo).permit(:unit_id, :day, :daypart_id, :minutes, :seconds)
  end
end
