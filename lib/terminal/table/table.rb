module Terminal
  class Table
    private

    undef :recalc_column_widths
    def recalc_column_widths(row)
      return if row.is_a? Separator
      i = 0
      row.cells.each do |cell|
        colspan = cell.colspan
        cell_value = cell.value_for_column_width_recalc
        colspan.downto(1) do |_j|
          # cell_length = cell_value.to_s.length
          cell_length = cell_value.to_s.display_width
          if colspan > 1
            spacing_length = cell_spacing * (colspan - 1)
            length_in_columns = (cell_length - spacing_length)
            cell_length = (length_in_columns.to_f / colspan).ceil
          end
          if @column_widths[i].to_i < cell_length
            @column_widths[i] = cell_length
          end
          i += 1
        end
      end
    end
  end
end
