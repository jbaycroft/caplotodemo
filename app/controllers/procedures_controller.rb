class ProceduresController < ApplicationController
	default_scope order('step_num ASC')
end
