class PagesController < ApplicationController
  require 'resque'

  def dev
  end

  def overview
    @manager = Resque.info[:servers]
    @manager = @manager.to_s[10...-10]

    @nodes ||= Array.new
    @workers = Resque.workers
    @workers.each do |worker|
        tokens = worker.to_s.split(":")
        @nodes.push(tokens[0])
    end
    @nodes_count = @nodes.count(Socket.gethostname)
  end
end
