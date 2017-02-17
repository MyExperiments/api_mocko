System.config({
  map: {
    'app': 'frontend/javascripts',
  },
  packages: {
    'app': {
      defaultExtension: 'ts'
    }
  }
});
System.import('app/boot');