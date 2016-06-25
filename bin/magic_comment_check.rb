# -*- frozen_string_literal: true -*-

# check if magic comment (frozen_string_literal: true) exists

glob_path = File.expand_path('..', __FILE__) + '**/*.rb'

Dir.glob(glob_path) do |path|
  f = File.open(path, 'r')
  if line = f.readline
    unless line.start_with?('# -*- frozen_string_literal: true -*-')
      puts 'NG: ' + path
    end
  end
  f.close
end
