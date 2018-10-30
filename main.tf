locals {
  bu          = "${lower(format("%s", var.bu))}"
  region      = "${lower(format("%s", var.region))}"
  shortregion = "{lookup(var.shortregion, var.region)}"
  env         = "${lower(format("%s", var.environment))}"
  shortregion = "{lookup(var.shortenv, var.env)}"
  resource    = "${lower(format("%s", var.resource))}"
  id          = "${join(var.delimiter, list(local.bu, local.shortenv, local.shortregion, local.resource))}"
  id_state    = "${var.state != "" ? join(var.delimiter, list(local.id, var.state)) : local.id}"
  id_appname  = "${var.appname != "" ? join(var.delimiter, list(local.id_state, var.appname)) : local.id_state}"
  id_suffix   = "${var.suffix != "" ? join(var.delimiter, list(local.id_appname, var.suffix)) : local.id_appname}"
  

  #TODO: only add Organization if not ""
  tags = "${ merge(
    var.tags,
    map(
      "BU",           "${local.bu}",
      "region",       "${local.region}",
      "Environment",  "${local.env}",
      "Resource",     "${local.resource}",
      "Name",         "${local.id_appname}",
    )
  )}"
}
