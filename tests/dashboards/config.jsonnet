local grafana = import 'grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;

local editable_mixin = {
  _config+:: {
    editable: true,
  },
};
local light_mixin = {
  _config+:: {
    style: 'light',
  },
};

{
  config: (
    dashboard + editable_mixin + light_mixin
  ).new('configured by mixin'),
}
