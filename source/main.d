module main;

import hunt.framework;
import hunt.logging;

void main(string[] args)
{
  LogConf conf;
  logLoadConf(conf);
  app().run(args);
}
