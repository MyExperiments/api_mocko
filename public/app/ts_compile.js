System.config({
  map: {
    'app': 'app/',
  },
  packages: {
    'app': {
      defaultExtension: 'ts'
    }
  }
});
System.import('app/boot');