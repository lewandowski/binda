module Binda
	module ComponentsHelper

		def get_sort_index_link
			if @structure.components.length < Component.sort_limit
				link_to "<i class=\"fa fa-random\" aria-hidden=\"true\"></i>Sort #{ @structure.name.humanize.split.map(&:capitalize).join(' ').pluralize }".html_safe, structure_components_sort_index_path, class: 'main-header--link b-btn b-btn-primary'
			else
				link_to "Sort #{ @structure.name.humanize.split.map(&:capitalize).join(' ').pluralize }", '#', class: 'main-header--link b-btn b-btn-primary', onclick: "alert(\"Sorry! It's not possible to sort #{@structure.name.pluralize} anymore. You currently have more than #{Component.sort_limit} #{@structure.name.pluralize} which is the maximum limit.\")"
			end
		end

	end
end
