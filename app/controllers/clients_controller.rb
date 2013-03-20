class ClientsController < ApplicationController

	# GET /clients
  # GET /clients.json
	def index
		@clients = Client.all

		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @clients }
    	end
	end
	# GET /clients/1/
	# GET /clients/1/.json
	def new
		@client = Client.new

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @client }
   		end
	end
	# DELETE /clients/1/
	# DELETE /clients/1/.json
	def destroy
		@client = Client.find(params[:id])
		@client.destroy

		respond_to do |format|
      		format.js
    	end
	end
	# GET /clients/1
	# GET /clients/1.json
	def show
		@client = Client.find(params[:id])

    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @client }
   	 	end
  	end
  	# PUT /clients/1
  	# PUT /clients/1.json
  	def create
  		@client = Client.new(params[:client])

    	respond_to do |format|
      		if @client.save
        		format.html { redirect_to @client, notice: 'Client successfully added.' }
        		format.json { render json: @client, status: :created, location: @client }
      		else
        		format.html { render action: "new" }
        		format.json { render json: @client.errors, status: :unprocessable_entity }
      		end
    	end
  	end
  	# GET /clients/1
  	def edit
  		@client = Client.find(params[:id])
  	end
  	# PUT /clients/1
  	# PUT /clients/1.json
  	def update
    	@client = Client.find(params[:id])

    	respond_to do |format|
      		if @client.update_attributes(params[:client])
        		format.html { redirect_to @client, notice: 'Client successfully updated.' }
        		format.json { head :no_content }
     		else
        		format.html { render action: "edit" }
        		format.json { render json: @client.errors, status: :unprocessable_entity }
      		end
    	end
  	end

end
