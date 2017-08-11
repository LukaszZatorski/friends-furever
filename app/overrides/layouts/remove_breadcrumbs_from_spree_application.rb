Deface::Override.new(virtual_path: 'spree/layouts/spree_application',
                     name:         'remove_breadcrumbs_from_spree_application',
                     remove:       'erb[loud]:contains("breadcrumbs")',
                     original:     'd7251377c32400c1ec5b89f37c666fb8b0f1ebab')
