require "fileutils"

module RGit
  RGIT_DIRECTORY = "#{Dir.pwd}/.rgit".freeze
  OBJECTS_DIRECTORY = "#{RGIT_DIRECTORY}/objects".freeze

  class Object
    def initialize(sha)
      @sha = sha
    end

    def write(&block)
      object_directory = "#{OBJECTS_DIRECTORY}/#{sha[0..1]}"
      FileUtils.mkdir_p object_directory
      object_path = "#{object_directory}/#{sha[2..-1]}"
      File.open(object_path, "w", &block)
    end

    private

    attr_reader :sha
  end
end
