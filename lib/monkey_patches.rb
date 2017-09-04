class String
  def trelloize
    chomp.downcase.gsub(/[,!@#$%^*()]/, "_").gsub(/\s+/, "_").gsub(/[\/\&]/, "_and_")
  end
end
