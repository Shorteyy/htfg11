view: rideinfotoegevoegdaanjill {
  derived_table: {
    sql: Select Concat(FirstName," ",LastName) As Name, r.RideID, PickupLocation, DropoffLocation From People p
      join RidePassengers r on p.ID = r.passengerId
      join RideInfo ri on r.RideID = ri.RideID
      Where FirstName = "Jill"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: ride_id {
    type: number
    sql: ${TABLE}.RideID ;;
  }

  dimension: pickup_location {
    type: number
    sql: ${TABLE}.PickupLocation ;;
  }

  dimension: dropoff_location {
    type: number
    sql: ${TABLE}.DropoffLocation ;;
  }

  set: detail {
    fields: [name, ride_id, pickup_location, dropoff_location]
  }
}
