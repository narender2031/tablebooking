class TableSettingsController < ApplicationController
    def index
        @table = TableSetting.new
        @tables = TableSetting.all
    end
    def create
        @table = TableSetting.new(table_settings_params)
        if TableSetting.find_by(table_number: table_settings_params[:table_number])
            redirect_to table_path
        else
            if @table.save
                redirect_to table_path
            else
            end
        end    
    end
    def edit
       @table = TableSetting.find(params[:id])
    end
    def deleteTable
        TableSetting.where(id: params[:id]).delete_all
        redirect_to table_path
    end
    def update
        @table = TableSetting.find(table_settings_params[:id])
        @table.update_attributes(table_settings_params)
        redirect_to table_path
    end
    private 
    def table_settings_params
        params.require(:table_setting).permit(:id,:section, :seats, :table_number, :status)
    end
end
