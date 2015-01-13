module RuboCop
  module Cop
    module Rails
      class PostgresqlCursor < Cop
        MSG = 'Prefer `each_instance` over `find_each`.'

        def on_send(node)
          _receiver, method_name, *_args = *node
          return unless :find_each == method_name

          add_offense(node, :selector, MSG)
        end

        def autocorrect(node)
          @corrections << lambda do |corrector|
            corrector.replace(node.loc.selector, 'each_instance')
          end
        end
      end
    end
  end
end
