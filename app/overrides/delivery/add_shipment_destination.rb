Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
    :name => "add_shipment_destination",
    :insert_bottom => "#methods",
    :partial => "shared/destination",
    :disabled => false,
    :original => "2fee9263645153898a4e24ae934129f6a45c6e6d")
