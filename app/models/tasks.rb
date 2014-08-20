class Tasks < ActiveRecord::Base
	require "CSV"

	def importTasks(file_path)
		csv_data = CSV.parse(file_path,:headers => true)
		csv_data.each_with_index do |row, index|
			next if index == 0

			projectName = row[0]
			projectResponser = row[1]
			isDuban = row[2]
			duBanTime = row[3]
			taskNo = row[4]
			taskName = row[5]
			taskResponser = row[6]
			bigProject = row[7]
			bigProjectCategory = row[8]
			businessDep = row[9]
			excuteTeam = row[10]
			taskPhase = row[11]
			deadline = row[12]
			remark = row[13]
		end
	end

end