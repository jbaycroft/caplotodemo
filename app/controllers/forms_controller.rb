class FormsController < ApplicationController
	# get client variable
	before_filter :get_client

	def get_client
		@client = Client.find(params[:client_id])
	end
	# GET /forms
  	# GET /forms.json
	def index
		@forms = @client.forms.all

		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @forms }
    	end
	end
	# GET /forms/1/
	# GET /forms/1/.json
	def new
		@form = @client.forms.new

    @procedures = @form.procedures.order('step_num ASC')
    3.times do
      procedure = @form.procedures.build
    end
    3.times do
      authemp = @form.authemps.build
    end

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @form }
   		end
	end
	# DELETE /forms/1/
	# DELETE /forms/1/.json
	def destroy
		@form = @client.forms.find(params[:id])
		@form.destroy

		respond_to do |format|
      		format.js
    	end
	end
	# GET /forms/1
	# GET /forms/1.json
	def show
		@form = @client.forms.find(params[:id])

    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @form }
   	 	end
  	end
  	# PUT /forms/1
  	# PUT /forms/1.json
  	def create
  		@form = @client.forms.new(params[:form])

    	respond_to do |format|
      		if @form.save
        		format.html { redirect_to @client, notice: 'Lockout Tagout Form successfully added.' }
        		format.json { render json: @client, status: :created, location: @form }
      		else
        		format.html { render action: "new" }
        		format.json { render json: @form.errors, status: :unprocessable_entity }
      		end
    	end
  	end
  	# GET /forms/1
  	def edit
  		@form = @client.forms.find(params[:id])
      @procedures = @form.procedures.order('step_num ASC')
  	end
  	# PUT /forms/1
  	# PUT /forms/1.json
  	def update
    	@form = @client.forms.find(params[:id])

    	respond_to do |format|
      		if @form.update_attributes(params[:form])
        		format.html { redirect_to @client, notice: 'Lockout Tagout Form successfully updated.' }
        		format.json { head :no_content }
     		else
        		format.html { render action: "edit" }
        		format.json { render json: @form.errors, status: :unprocessable_entity }
      		end
    	end
  	end

end
