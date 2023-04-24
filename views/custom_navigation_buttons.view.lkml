view: custom_navigation_buttons {

  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a300_energy_bill_forecast_msoa_geo_v2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.



  measure: dash_nav {
    view_label: "Session"
    group_label: "Dashboard Navigation"
    label: "Navigation Bar"
    type: string
    sql: "";;
    html:
    <div style="background-color: #F6F6F7; height:500px;width:100%"></div>
      <div style="background-color: #F6F6F7; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 15px; color: #4285F4">
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1608">Project Overview</a>
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1605">Interactive Heatmap</a>
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1606">Predictive Model</a>
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1607">Regional Drilldown</a>
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1631">Shared PSR - Overview</a>
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1619">Shared PSR - Utilities View</a>
          <a style="padding: 3px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="https://googlecloud.looker.com/embed/dashboards/1625">Shared PSR - Subscriber View</a>


      </nav>
      </div>
      <div style="background-color: #F6F6F7; height:500px;width:100%"></div>;;

  }
}
