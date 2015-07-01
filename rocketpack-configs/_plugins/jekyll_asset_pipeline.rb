require 'japr'

module JAPR
  DEFAULTS = {
    'output_path'   => 'assets',
    'display_path'  => nil,
    'staging_path'  => '../.asset_pipeline',
    'bundle'        => true,
    'compress'      => true,
    'gzip'          => false
  }

  class SassConverter < JAPR::Converter
    require 'sass'

    def self.filetype
      '.scss'
    end

    def convert
      return Sass::Engine.new(@content, load_paths: ['.','_css'], syntax: :scss).render
    end
  end


  class CssCompressor < JAPR::Compressor
    require 'yui/compressor'

    def self.filetype
      '.css'
    end

    def compress
      return YUI::CssCompressor.new.compress(@content)
    end
  end

  class JavaScriptCompressor < JAPR::Compressor
    require 'yui/compressor'

    def self.filetype
      '.js'
    end

    def compress
      return YUI::JavaScriptCompressor.new(munge: true).compress(@content)
    end
  end

end