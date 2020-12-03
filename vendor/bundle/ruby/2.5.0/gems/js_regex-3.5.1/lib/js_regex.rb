# frozen_string_literal: true

# JsRegex converts ::Regexp instances to JavaScript.
#
# Usage:
#
# js_regex = JsRegex.new(my_ruby_regex)
# js_regex.to_h  # for use in 'new RegExp()'
# js_regex.to_s  # for direct injection into JavaScript
#
class JsRegex
  require_relative File.join('js_regex', 'conversion')
  require_relative File.join('js_regex', 'version')
  require 'json'

  attr_reader :source, :options, :warnings

  def initialize(ruby_regex, options: nil)
    @source, @options, @warnings = Conversion.of(ruby_regex, options: options)
  end

  def to_h
    { source: source, options: options }
  end

  def to_json(options = {})
    to_h.to_json(options)
  end

  def to_s
    "/#{source.empty? ? '(?:)' : source}/#{options}"
  end
end
